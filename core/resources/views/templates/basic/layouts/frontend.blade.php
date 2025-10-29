@extends($activeTemplate . 'layouts.app')
@section('app-content')
    @stack('fbComment')
    @include('Template::partials.header')
    <div class="py-5">
        @yield('content')
    </div>
    
    @include('Template::partials.footer')
@endsection
