@extends($activeTemplate . 'layouts.master')

@section('content')
    <div class="container mt-5">
        <div class="row">
            {{-- Sidebar --}}
            <div class="col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="text-center">Chat History</h5>
                        <hr>
                        <button id="newChat" class="btn btn-success mb-2 w-100">New Chat</button>
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

            {{-- Chat Area --}}
            <div class="col-lg-8">
                <div class="card shadow">
                    <div class="card-body text-center">
                        <h2>AI Chatbot</h2>
                        <hr>
                        <div id="messages" class="message-box">
                            @foreach ($messages as $msg)
                                <div>
                                    <b>{{ $msg->sender == 1 ? 'You' : 'Bot' }}:</b> {!! nl2br(e($msg->message)) !!}
                                </div>
                            @endforeach
                        </div>

                        <div class="d-flex mt-2">
                            <input type="text" id="message" class="form-control me-2"
                                placeholder="Type your message..." />
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

            // 🔹 Current conversation ID set from backend
            window.currentConversationId = {{ $currentConversationId ?? 'null' }};

            // Escape any HTML (XSS protection)
            function escapeHtml(text) {
                return $('<div>').text(text).html();
            }

            // Append message to chat window
            function appendMessage(sender, text) {
                text = text.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>')
                    .replace(/\*(.*?)\*/g, '<em>$1</em>');
                $('#messages').append('<div><b>' + sender + ':</b> ' + text + '</div>');
                $('#messages').scrollTop($('#messages')[0].scrollHeight);

                // Sidebar auto scroll to active
                scrollToActiveHistory();
            }

            // ===== Send Message =====
            function sendMessage(message) {
                if (!message.trim()) return;

                appendMessage('You', message);
                $('#message').val('');

                $.post('{{ route('user.chat') }}', {
                    message: message,
                    conversation_id: window.currentConversationId,
                    _token: '{{ csrf_token() }}'
                }, function(res) {

                    // ✅ যদি নতুন conversation হয়
                    if (!window.currentConversationId) {
                        window.currentConversationId = res.conversation_id;

                        // যদি temp placeholder থাকে → সেটাকে replace করো
                        let $temp = $('.history-item.temp-item');
                        if ($temp.length) {
                            $temp.removeClass('temp-item').attr('data-id', res.conversation_id)
                                .text(escapeHtml(message.split(/\s+/).slice(0, 30).join(' ') + '...'));
                        } else {
                            $('.history-item').removeClass('active');
                            $('#historyList').prepend(`
                        <div class="history-item active" data-id="${res.conversation_id}">
                            ${escapeHtml(message.split(/\s+/).slice(0,30).join(' '))}...
                        </div>
                    `);
                        }
                    }

                    appendMessage('Bot', res.reply);

                    // active item text update
                    let shortMsg = message.split(/\s+/).slice(0, 30).join(' ');
                    if (message.split(/\s+/).length > 30) shortMsg += '...';
                    $('.history-item.active').text(escapeHtml(shortMsg));

                }).fail(function() {
                    appendMessage('Bot', '⚠️ Error: Could not send message.');
                });
            }

            // Send on click
            $('#send').click(function() {
                sendMessage($('#message').val());
            });

            // Send on Enter key
            $('#message').keypress(function(e) {
                if (e.which == 13) {
                    e.preventDefault();
                    sendMessage($('#message').val());
                }
            });

            // ===== Scroll to Active Sidebar =====
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

            // ===== Preserve active conversation across refresh =====
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

            // ===== Click on history-item =====
            $(document).on('click', '.history-item', function() {
                var convId = $(this).data('id');

                $('.history-item').removeClass('active');
                $(this).addClass('active');

                // Save active id in sessionStorage
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

            // ===== New Chat =====
            $('#newChat').click(function() {
                $.post('{{ route('user.chat.new') }}', {
                    _token: '{{ csrf_token() }}'
                }, function(res) {
                    if (res.success) {
                        sessionStorage.removeItem('activeConversationId');
                        window.currentConversationId = null;
                        $('#messages').html('<div><b>Bot:</b> New conversation started!</div>');
                        $('.history-item').removeClass('active');
                        $('#historyList').prepend(
                            '<div class="history-item active temp-item" data-id="' + res
                            .conversation_id +
                            '">Conversation #' + res.conversation_id + '</div>'
                        );
                        $('#message').focus();
                        scrollToActiveHistory();
                    }
                });
            });

        });
    </script>
@endpush
