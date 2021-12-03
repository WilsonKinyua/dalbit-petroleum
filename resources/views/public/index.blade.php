@extends('layouts.public')

@section('title')
    - Homepage | Fuel Supply & Distribution
@endsection

@section('content')
    <section class="slider-01">
        <div id="main-slider" class="swiper-container">
            <div class="swiper-wrapper">
                @if ($sliders)
                    @foreach ($sliders as $key => $slider)
                        <div class="swiper-slide slide-02"
                            style="background-image: url(@if ($slider->image){{ $slider->image->getUrl() }} @endif); background-size: cover; background-position: center; background-repeat: no-repeat;">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-7 col-lg-7 col-md-10">
                                        <div class=" banner-content">
                                            <div class="content">
                                                <div class="animated lead text-main-color text-bold"
                                                    data-swiper-animation="fadeInUp" data-duration="2.0s" data-delay="1.0s">
                                                    {!! $slider->caption ?? '' !!}
                                                </div>
                                                <p class="animated  mt-3 mb-4 text-main-color"
                                                    data-swiper-animation="fadeInUp" data-duration="2.0s" data-delay="1.5s">
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
                    @endforeach
                @endif
            </div>
            <div class="swiper-pagination-left-center">
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>

    <!-- countries -->
    <section class="space-ptb team-grid">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7">
                    <div class="section-title text-center">
                        <h2>Our Footprint</h2>
                        <p>
                            As a diversified conglomerate, our interest in multiple industries indicates our determination
                            to cater to
                            our vision of providing basic needs.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row text-center owl-carousel">
                @if ($divisions)
                    @foreach ($divisions as $key => $division)
                        <div class="item">
                            <div class="team team-style-1">
                                <div class="team-img">
                                    @if ($division->country_image)
                                        <img class="img-fluid" src="{{ $division->country_image->getUrl() }}" alt="">
                                    @endif
                                </div>
                                <div class="team-info bg-color-main ">
                                    <h6 class="team-title">
                                        <a href="{{ route('division.country',$division->slug )}}">{{ $division->country->name ?? '' }}</a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
                {{-- <div class="item">
                    <div class="team team-style-1">
                      <div class="team-img">
                        <img class="img-fluid"
                          src="https://www.silverbackgorillatours.com/wp-content/uploads/2019/04/Kampala-City-in-Uganda.jpg"
                          alt="">
                      </div>
                      <div class="team-info">
                        <h6 class="team-title"><a href="./uganda.html">Uganda</a></h6>
                      </div>
                    </div>
                  </div> --}}
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
                            <span class="number display-4 text-primary" data-to="15" data-speed="1000">30</span>
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

            <div class="row">
                @if (count($newsrooms) > 0)
                    @foreach ($newsrooms as $key => $newsroom)
                        <div class="col-md-3 col-sm-6">
                            <div class="blog-post blog-post-style-2 mb-4 bg-white">
                                <div class="blog-post-image">
                                    @if ($newsroom->image)
                                        <img class="img-fluid" src="{{ $newsroom->image->getUrl() }}" alt="">
                                    @endif
                                </div>
                                <div class="blog-post-content">
                                    <div class="blog-post-details">
                                        <h6 class="blog-post-title mb-0 text-primary">
                                            <a href="{{route('news.single',$newsroom->slug ?? '')}}">{{ Str::limit($newsroom->title,67,'...') ?? '' }}</a>
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
                    <a href="./news.html" class="btn btn-primary btn-sm">
                        <i class="btn-icon change-on-hover"> View More <i class="fas fa-long-arrow-alt-right"></i></i>
                        <span>View More</span>
                    </a>
                </div>
            </div>

        </div>
    </section>
@endsection
