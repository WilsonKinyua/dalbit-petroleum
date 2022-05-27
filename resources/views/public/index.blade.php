@extends('layouts.public')

{{-- @section('title') Homepage | Fuel Supply & Distribution @endsection --}}

@section('content')
    {{-- display only on large screens --}}
    <section class="slider-01 display-large">
        <div id="main-slider" class="swiper-container">
            <div class="swiper-wrapper">
                @if ($sliders)
                    @foreach ($sliders as $key => $slider)
                        <div class="swiper-slide slide-02" style="
                                                background-image: url(@if ($slider->image) {{ $slider->image->getUrl() }} @endif); background-size: cover; background-position: center; background-repeat: no-repeat;
                                                ">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-7 col-lg-6 col-md-10 ">
                                        <div class="slider-background-color bg-slider">
                                            <div class="slider-content">
                                                <div class="mt-5">
                                                    <div class="animated lead text-main-color text-bold"
                                                        data-swiper-animation="fadeInUp" data-duration="2.0s"
                                                        data-delay="1.0s">
                                                        {!! $slider->caption ?? '' !!}
                                                    </div>
                                                    <p class="animated text-main-color button-caption"
                                                        data-swiper-animation="fadeInUp" data-duration="2.0s"
                                                        data-delay="1.5s">
                                                        <a href="{{ $slider->link ?? '' }}"
                                                            class="btn btn-sm btn-primary mt-2 slider-button">
                                                            Read More
                                                            <i class="btn-icon change-on-hover">
                                                                Read More
                                                                <i class="fas fa-long-arrow-alt-right"></i></i>
                                                        </a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="swiper-pagination-left-center">
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </section>
    <div id="carouselExampleCaptions" class="carousel slide display-small" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{{ asset('images/slider/mobile-1.png') }}" class="d-block w-100" alt="Slider">
                <div class="carousel-caption">
                    <p>Dalbit marks its 20-year anniversary by planting 1,000 trees at the<span class="text-primary">
                            Mount Kenya Wildlife Conservancy.</span></p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="{{ asset('images/slider/mobile-bongo.jpg') }}" class="d-block w-100" alt="Slider">
                <div class="carousel-caption">
                    <p>Dalbit is a proud supporter of<br> the Mount Kenya Wildlife Conservancy<br> <span
                        class="text-primary"> Mountain Bongo Breeding program.</span></p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="{{ asset('images/slider/1.png') }}" class="d-block w-100" alt="Slider">
                <div class="carousel-caption">
                    <p>We deliver to our customers wherever they are;<span class="text-primary"> our robust logistics team ensures we go deeper and further.</span></p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="{{ asset('images/slider/measurement.jpg') }}" class="d-block w-100" alt="Slider">
                <div class="carousel-caption">
                    <p>Fuelling solutions provide connectivity links as aircrafts<span class="text-primary"> refuel at the Gulu and Arua Airfields.</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- countries -->
    <section class="space-ptb team-grid">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7">
                    <div class="section-title text-center">
                        <h2>Our Footprint</h2>
                        <p>
                            Dalbit, through its vast networks, affiliates, licensees, and partners, has a strong operational
                            footprint throughout East, Central, and Southern Africa.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row text-center owl-carousel">
                @if ($divisions)
                    @foreach ($divisions as $key => $division)
                        <div class="item countries-carousel">
                            <div class="team team-style-1">
                                <div class="team-img">
                                    @if ($division->country_image)
                                        <img class="img-fluid" src="{{ $division->country_image->getUrl() }}" alt="">
                                    @endif
                                </div>
                                <div class="team-info bg-color-main ">
                                    <h6 class="team-title">
                                        @if ($division->slug == 'democratic-republic-of-the-congo')
                                            <a href="{{ route('division.country', $division->slug) }}">DRC (Licensee)</a>
                                        @elseif ($division->slug == 'south-sudan')
                                            <a href="{{ route('division.country', $division->slug) }}">{{ $division->country->name ?? '' }}
                                                (Licensee)
                                            </a>
                                        @else
                                            <a
                                                href="{{ route('division.country', $division->slug) }}">{{ $division->country->name ?? '' }}</a>
                                        @endif
                                    </h6>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </section>

    <!-- ============================== glance box =========================== -->

    <section class="container space-ptb team-grid">
        <div class="glance-card mt-5">
            <div class="bg-light">
                <div class="glance-header text-center p-1">
                    <h6 class="text-uppercase text-white tl-1">Dalbit AT A GLANCE</h6>
                </div>
                <div class="glance-body text-center">
                    <div class="row pr-3 pl-3">
                        <div class="col-md-3 border-right pb-2 pt-2">
                            <span class="number display-4 text-primary" data-to="2000" data-speed="1000">2002</span>
                            <h4>Founded</h4>
                        </div>
                        <div class="col-md-3 border-right pb-2 pt-2">
                            <span class="number display-4 text-primary" data-to="10" data-speed="1000">9</span>
                            <h4>Countries</h4>
                        </div>
                        <div class="col-md-3 border-right pb-2 pt-2">
                            <span class="number display-4 text-primary" data-to="15" data-speed="1000">9</span>
                            <h4>Fuel Depots</h4>
                        </div>
                        <div class="col-md-3 border-right pb-2 pt-2">
                            <span class="number display-4 text-primary" data-to="148" data-speed="1000">148</span>
                            <h4>Employees</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="container space-ptb mt-4">
        <div class="">
            <div class="row justify-content-center">
                <div class="col-md-7">
                    <div class="section-title text-center">
                        <h2>Latest News</h2>
                    </div>
                </div>
            </div>

            <div class="row mr-3">
                @if (count($newsrooms) > 0)
                    @foreach ($newsrooms as $key => $newsroom)
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="blog-post blog-post-style-2 mb-4 bg-white">
                                <div class="blog-post-image">
                                    @if ($newsroom->image)
                                        <img class="img-fluid" src="{{ $newsroom->image->getUrl() }}" alt="">
                                    @endif
                                </div>
                                <div class="blog-post-content">
                                    <div class="blog-post-details">
                                        <h6 class="blog-post-title mb-0 text-primary">
                                            <a
                                                href="{{ route('news.single', $newsroom->slug ?? '') }}">{{ Str::limit($newsroom->title, 67, '...') ?? '' }}</a>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @else
                    <div class="col-md-12 text-center">
                        <p class="text-danger">No news at the moment! Try again later</p>
                    </div>
                @endif
            </div>
            <hr class="m-0 mt-5">
            <div class="row mt-4 mt-md-5 ">
                <div class="col-12 d-md-flex justify-content-center align-items-center text-center">
                    <p class="mb-3 mb-md-0 mx-0 mx-md-3 text-light">We have articles on a range of topics</p>
                    <a href="{{ route('top.news') }}" class="btn btn-primary btn-sm">
                        <i class="btn-icon change-on-hover"> View More <i class="fas fa-long-arrow-alt-right"></i></i>
                        <span>View More</span>
                    </a>
                </div>
            </div>

        </div>
    </section>
@endsection
