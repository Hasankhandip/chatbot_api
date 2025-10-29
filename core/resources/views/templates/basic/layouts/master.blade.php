@extends($activeTemplate . 'layouts.app')
@section('app-content')
    @include('Template::partials.auth_header')
    <div class="py-5">
        @yield('content')
    </div>
    @include('Template::partials.footer')
@endsection
