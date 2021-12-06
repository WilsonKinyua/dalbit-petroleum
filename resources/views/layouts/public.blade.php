<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="author" content="Dalbit Petroleum - Fuel Supply & Distribution" />
    <title> Dalbit Petroleum — @if (View::hasSection('title'))@yield('title')@else Dalbit Petroleum — Fuel Supply & Distribution @endif</title>
    <meta name="keywords" content="@if (View::hasSection('keywords'))@yield('keywords')@else Kenya, Tanzania, Congo, Sudan, Zambia, Zimbabwe, South Africa Petroleum Company, Africa, Energy Solutions, Transportation, Fuel Depots, Hospitality @endif" />
    <meta name="title" content="{{ trans('panel.site_title') }} —@if (View::hasSection('title'))@yield('title')@else Dalbit Petroleum — Fuel Supply & Distribution @endif">
    <meta name="description" content="@if (View::hasSection('description'))@yield('description')@else Dalbit Petroleum is engaged in trading, supply, and distribution of petroleum products in Eastern, Southern Africa - Kenya, Tanzania, Uganda, Zambia, and Mozambique @endif">

    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ Request::url() }}">
    <meta property="og:title" content="@if (View::hasSection('title'))@yield('title')@else Dalbit Petroleum — Fuel Supply & Distribution @endif">
    <meta property="og:description" content="@if (View::hasSection('description'))@yield('description')@else Dalbit Petroleum is engaged in trading, supply, and distribution of petroleum products in Eastern, Southern Africa - Kenya, Tanzania, Uganda, Zambia, and Mozambique @endif">
    <meta property="og:image" content="@if (View::hasSection('image'))@yield('image')@else{{ asset('images/logo.png') }}@endif">

    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="{{ Request::url() }}">
    <meta property="twitter:title" content="{{ trans('panel.site_title') }} —@if (View::hasSection('title'))@yield('title')@else Dalbit Petroleum — Fuel Supply & Distribution @endif">
    <meta property="twitter:description" content="@if (View::hasSection('description'))@yield('description')@else Dalbit Petroleum is engaged in trading, supply, and distribution of petroleum products in Eastern, Southern Africa - Kenya, Tanzania, Uganda, Zambia, and Mozambique @endif">
    <meta property="twitter:image" content="@if (View::hasSection('image'))@yield('image')@else{{ asset('images/logo.png') }} @endif">

    <!-- Favicon -->
    <link rel="icon" href="{{ asset('images/favicon.ico') }}" />
    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700&amp;family=Roboto+Slab:wght@300;400;500;600;700;800;900&amp;display=swap"
        rel="stylesheet">
    {{-- owl carousel --}}
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
    <!-- Styles -->
    <link rel="stylesheet" href="{{ asset('css/style.css') }}" />
    @yield('css')
</head>

<body>

    {{-- navbar --}}
    @include('partials.header')


    {{-- body content --}}
    @yield('content')


    {{-- footer --}}
    @include('partials.footer')
    <!--=================================
    Back To Top -->
    <div id="back-to-top" class="back-to-top">
        <a href="#"><i class="fas fa-long-arrow-alt-up"></i> </a>
    </div>
    <!--=================================
    Back To Top -->

    <!--=================================
    Javascript -->

    <!-- JS Global  -->
    <script src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>
    <script src="{{ asset('js/popper/popper.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap/bootstrap.min.js') }}"></script>

    <!-- Page JS Implementing Plugins-->
    <script src="{{ asset('js/jquery.appear.js') }}"></script>
    <script src="{{ asset('js/owl-carousel/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('js/swiper/swiper.min.js') }}"></script>
    <script src="{{ asset('js/swiperanimation/SwiperAnimation.min.js') }}"></script>
    <script src="{{ asset('js/magnific-popup/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
    <!--  Scripts -->
    <script src="{{ asset('js/custom.js') }}"></script>
    @yield('scripts')
</body>


</html>
