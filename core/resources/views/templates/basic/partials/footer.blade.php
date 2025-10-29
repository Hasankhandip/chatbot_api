@php
    $policyPages = getContent('policy_pages.element', false, orderById: true);
@endphp
<div class="footer bg-primary text-center">
    <ul class=" d-flex gap-2 justify-content-center p-3 list-unstyled mb-0">
        <li class="nav-item">
            <a class="nav-link text-white" href="{{ route('home') }}">@lang('Home') | </a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" href="{{ route('blogs') }}">@lang('Blog') | </a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" href="{{ route('contact') }}">@lang('Contact') | </a>
        </li>
        @foreach ($policyPages as $policy)
            <li class="nav-item">
                <a class="nav-link text-white" href="{{ route('policy.pages', $policy->slug) }}">
                    {{ __($policy->data_values->title) }} |
                </a>
            </li>
        @endforeach
        <li class="nav-item">
            <a class="nav-link text-white" href="{{ route('cookie.policy') }}">
                @lang('Cookie Policy')
            </a>
        </li>
        </span>
    </ul>
    <a href="https://github.com/muntasir270/flutter-admin-panel" target="_blank">
        <h1 class="m-0 text-white">
            <i class="lab la-github"></i>
        </h1>
    </a>
</div>
