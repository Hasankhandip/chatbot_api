@extends($activeTemplate . 'layouts.master')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="text-center">Chat History</h5>
                        <hr>
                        <button id="newChat" class="btn btn--base mb-2 w-100">New Chat</button>
                        <div class="history-list" id="historyList">
                            @foreach ($conversations as $conv)
                                <div class="history-item {{ $conv->conversation_id == $currentConversationId ? 'active' : '' }}"
                                    data-id="{{ $conv->conversation_id }}">
                                    {{ $conv->message }}
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8">
                <div class="card custom--card shadow">
                    <div class="card-body">
                        <h2 class="text-center mb-3">AI Chatbot</h2>
                        <div id="messages" class="message-box mb-2" style="white-space: pre-wrap;">
                            @foreach ($messages as $msg)
                                <div>
                                    <b>{{ $msg->sender == 1 ? 'You' : 'Bot' }}:</b> {{ $msg->message }}
                                </div>
                            @endforeach
                        </div>
                        <div id="typingIndicator" style="display:none;  margin-bottom:5px;">Bot is
                            typing...</div>


                        <div class="chat-input-container d-flex align-items-center">
                            <textarea id="message" class="form-control me-2 chat-input" placeholder="Type your message..." rows="1"></textarea>
                            <button id="send" class="btn btn-primary">Send</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection



@push('script')
    <script>
        $(document).ready(function() {
            window.currentConversationId = {{ $currentConversationId ?? 'null' }};

            function escapeHtml(text) {
                return $('<div>').text(text).html();
            }

            function appendMessage(sender, text) {
                let safeText = $('<div>').text(text).html();
                safeText = safeText.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>')
                    .replace(/\*(.*?)\*/g, '<em>$1</em>');
                $('#messages').append('<div class="message-content"><b>' + sender + ':</b> ' + safeText + '</div>');
                $('#messages').scrollTop($('#messages')[0].scrollHeight);
            }


            function sendMessage(message) {
                if (!message.trim()) return;

                appendMessage('You', message);
                $('#message').val('');

                $('#typingIndicator').show();


                $.post('{{ route('user.chat') }}', {
                    message: message,
                    conversation_id: window.currentConversationId,
                    _token: '{{ csrf_token() }}'
                }, function(res) {
                    $('#typingIndicator').hide();

                    if (!window.currentConversationId) {
                        window.currentConversationId = res.conversation_id;

                        let $temp = $('.history-item.temp-item');
                        if ($temp.length) {
                            $temp.removeClass('temp-item').attr('data-id', res.conversation_id)
                                .text(escapeHtml(message.split(/\s+/).slice(0, 30).join(' ') + '...'));
                        } else {
                            $('#historyList').prepend(`
                    <div class="history-item active" data-id="${res.conversation_id}">
                        ${escapeHtml(message.split(/\s+/).slice(0,30).join(' ') + '...')}
                    </div>
                `);
                        }
                    }

                    appendMessage('Bot', res.reply);

                }).fail(function() {
                    $('#typingIndicator').hide();
                    appendMessage('Bot', '⚠️ Error: Could not send message.');
                });
            }


            $('#send').click(function() {
                sendMessage($('#message').val());
            });

            $('#message').on('input keydown', function(e) {
                const field = this;
                field.style.height = 'auto';
                field.style.height = Math.min(field.scrollHeight, 180) + 'px';

                if (e.key === 'Enter' && !e.shiftKey) {
                    e.preventDefault();
                    sendMessage($(field).val());
                }
            });



            function scrollToActiveHistory() {
                const $container = $('#historyList');
                const $active = $container.find('.history-item.active');

                if ($active.length) {
                    $container.animate({
                        scrollTop: $container.scrollTop() + $active.position().top - $container.height() /
                            2 + $active.outerHeight() / 2
                    }, 400);
                }
            }


            let savedActiveId = sessionStorage.getItem('activeConversationId');
            if (savedActiveId) {
                $('.history-item').removeClass('active');
                $('.history-item[data-id="' + savedActiveId + '"]').addClass('active');
                scrollToActiveHistory();

                window.currentConversationId = savedActiveId;
                $('#messages').html('<div>Loading...</div>');

                var url = '{{ route('user.chat.load', ':id') }}'.replace(':id', savedActiveId);
                $.get(url, function(messages) {
                    $('#messages').html('');
                    messages.forEach(function(msg) {
                        appendMessage(msg.sender == 1 ? 'You' : 'Bot', msg.message);
                    });
                });
            }



            $(document).on('click', '.history-item', function() {
                var convId = $(this).data('id');

                $('.history-item').removeClass('active');
                $(this).addClass('active');


                sessionStorage.setItem('activeConversationId', convId);
                scrollToActiveHistory();

                window.currentConversationId = convId;
                $('#messages').html('<div>Loading...</div>');

                var url = '{{ route('user.chat.load', ':id') }}'.replace(':id', convId);
                $.get(url, function(messages) {
                    $('#messages').html('');
                    messages.forEach(function(msg) {
                        appendMessage(msg.sender == 1 ? 'You' : 'Bot', msg.message);
                    });
                });
            });


            $('#newChat').click(function() {
                $.post('{{ route('user.chat.new') }}', {
                    _token: '{{ csrf_token() }}'
                }, function(res) {
                    if (res.success) {
                        window.currentConversationId = null;
                        $('#messages').html('');
                        $('.history-item').removeClass('active');

                        $('#historyList').prepend(
                            '<div class="history-item active temp-item" data-id="">' +
                            'New Conversation' +
                            '</div>'
                        );
                        $('#message').focus();
                    }
                });
            });
        });
    </script>
@endpush
