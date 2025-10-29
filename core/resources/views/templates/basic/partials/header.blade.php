<div>
    <nav class="navbar text-white bg-primary navbar-expand-lg bg-body-tertiary">
        <div class="container">
            <a class="navbar-brand" href="{{ route('home') }}">
                <h1 class="text-white">@lang('Logo')</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse d-flex justify-content-between" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-white" href="{{ route('home') }}">@lang('Home')</a>
                    </li>
                    @foreach ($pages as $k => $data)
                        <li class="nav-item">
                            <a class="nav-link text-white" aria-current="page"
                                href="{{ route('pages', [$data->slug]) }}">{{ __($data->name) }}
                            </a>
                        </li>
                    @endforeach
                    <li class="nav-item">
                        <a class="nav-link text-white" href="{{ route('blogs') }}">@lang('Blog')</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="{{ route('contact') }}">@lang('Contact')</a>
                    </li>
                    @auth
                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('user.home') }}">@lang('Dashboard')</a>
                        </li>
                    @else
                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('user.login') }}">@lang('login')</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="{{ route('user.register') }}">@lang('register')</a>
                        </li>
                    @endauth
                </ul>
                @if (gs('multi_language'))
                    <div class="ml-auto">
                        @php
                            $appLocal = strtoupper(config('app.locale')) ?? 'en';
                        @endphp
                        <select class=" form-control form--control form-select langSel">
                            @foreach ($languages as $language)
                                <option value="{{ $language->code }}" @selected($appLocal == strtoupper($language->code))>
                                    {{ $language->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                @endif
            </div>
        </div>
    </nav>

</div>
