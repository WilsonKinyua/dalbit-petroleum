<!DOCTYPE html>
<html lang="en">

<head>
    {{--
        * Created by Wilson Kinyua.
        * Email: wilsonkinyuam@gmail.com
        * User: wilson
        * Date: 02/12/2021
        * Time: 10:39 AM
    --}}
    <meta charset="utf-8">
    <meta name="keywords" content="" />
    <meta name="description" content="Dalbit Petroleum " />
    <meta name="author" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>
        Dalbit Petroleum @yield('title')
    </title>

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
    <script src="{{ asset('js/counter/jquery.countTo.js') }}"></script>
    <script src="{{ asset('js/owl-carousel/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('js/swiper/swiper.min.js') }}"></script>
    <script src="{{ asset('js/swiperanimation/SwiperAnimation.min.js') }}"></script>
    <script src="{{ asset('js/magnific-popup/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ asset('js/shuffle/shuffle.min.js') }}"></script>
    <script src="{{ asset('js/easy-pie-chart/easy-pie-chart.js') }}"></script>
    <script src="{{ asset('js/apexcharts/apexcharts.min.js') }}"></script>
    <script src="{{ asset('js/apexcharts/charts.js') }}"></script>
    <script src="{{ asset('js/owl.carousel.min.js') }}"></script>

    <!--  Scripts -->
    <script src="{{ asset('js/custom.js') }}"></script>
</body>


</html>
