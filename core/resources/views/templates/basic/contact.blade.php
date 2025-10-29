@extends($activeTemplate . 'layouts.frontend')
@section('content')
    <div class="mt-5 my-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="card shadow">
                        <div class="card-body text-center">
                            <h1>{{ __($pageTitle) }}</h1>
                            <hr>
                            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deleniti tempora optio dolorum
                                autem
                                est accusamus atque, porro totam architecto, aliquam repellendus maxime quo? Aperiam, non
                                labore. Repudiandae error facilis quam tenetur debitis autem porro consequuntur quo, minima
                                sed
                                placeat molestias aperiam recusandae corrupti odit voluptates deserunt laudantium sunt.
                                Doloremque, dolore!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card ">
                        <div class="card-header">
                            <h5 class="card-title">{{ __($pageTitle) }}</h5>
                        </div>
                        <div class="card-body">
                            <form method="post" class="verify-gcaptcha">
                                @csrf
                                <div class="form-group">
                                    <label class="form-label">@lang('Name')</label>
                                    <input name="name" type="text" class="form-control form--control"
                                        value="{{ old('name', @$user->fullname) }}"
                                        @if ($user && $user->profile_complete) readonly @endif required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">@lang('Email')</label>
                                    <input name="email" type="email" class="form-control form--control"
                                        value="{{ old('email', @$user->email) }}"
                                        @if ($user) readonly @endif required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">@lang('Subject')</label>
                                    <input name="subject" type="text" class="form-control form--control"
                                        value="{{ old('subject') }}" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">@lang('Message')</label>
                                    <textarea name="message" class="form-control form--control" required>{{ old('message') }}</textarea>
                                </div>
                                <x-captcha />
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">@lang('Submit')</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    @if (@$sections->secs != null)
        @foreach (json_decode($sections->secs) as $sec)
            @include($activeTemplate . 'sections.' . $sec)
        @endforeach
    @endif
@endsection
