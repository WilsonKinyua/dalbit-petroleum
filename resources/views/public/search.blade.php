@extends('layouts.public')

@section('title') Search Results For {{ $query }} @endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/1.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="text-white text-capitalize">Search Results For - {{ $query }}</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ol class="breadcrumb-list list-unstyled d-flex">
                            <li class="breadcrumb-item"><a href="/"><i class="fas fa-home mr-2"></i>Home</a></li>
                            <li class="breadcrumb-item active text-capitalize"><span>Dalbit Search</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section class=" team-grid">
        <div class="container">
            <div class="row text-center mt-5">
                @if (count($divisions) == 0 and count($socialResponsibilities) == 0)
                    <div class="col-lg-12 m-3">
                        <i class="fa fa-exclamation-triangle mb-3"></i>
                        <h5 class="text-capitalize">No Results Found For - {{ $query }}</h5>
                    </div>
                @endif
                @if (count($divisions) > 0)
                    <div class="col-md-12">
                        <div class="section-title text-center">
                            <h2>Our Footprint</h2>
                        </div>
                    </div>
                    @foreach ($divisions as $key => $division)
                        <div class="col-lg-3 col-sm-6 mb-4 pb-2 ">
                            <div class="team team-style-1 ">
                                <div class="team-img">
                                    @if ($division->country_image)
                                        <img class="img-fluid" src="{{ $division->country_image->getUrl() }}" alt="">
                                    @endif
                                </div>
                                <div class="team-info bg-color-main ">
                                    <h6 class="team-title">
                                        <a
                                            href="{{ route('division.country', $division->slug) }}">{{ $division->country->name ?? '' }}</a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </section>
    <section class="space-ptb social-responsibility">
        <div class="container">
            <div class="row justify-content-start">
                @if (count($socialResponsibilities) > 0)
                    <div class="col-md-12">
                        <div class="text-center mb-5">
                            <h3>Social Responsibility</h3>
                        </div>
                    </div>
                    @foreach ($socialResponsibilities as $key => $socialResponsibility)
                        <div class="col-sm-6 col-lg-3 mb-4">
                            <div class="service-item">
                                <div class="service-img">
                                    @if ($socialResponsibility->image)
                                        <img class="img-fluid" src="{{ $socialResponsibility->image->getUrl() }}"
                                            alt="">
                                    @endif
                                    <a href="{{ route('our.pillars', $socialResponsibility->slug) }}"><i
                                            class="fas fa-long-arrow-alt-right"></i></a>
                                </div>
                                <div class="service-info">
                                    <h6 class="service-info-title"><a
                                            href="{{ route('our.pillars', $socialResponsibility->slug) }}">{{ $socialResponsibility->title ?? '' }}</a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </section>
    {{-- news search --}}
    <section class="space-ptb case-study">
        <div class="container">
            <div class="row">
                @if (count($newsrooms) > 0)
                <div class="col-md-12">
                    <div class="text-center mb-5">
                        <h3>News</h3>
                    </div>
                </div>
                    @foreach ($newsrooms as $key => $newsroom)
                        <div class="col-lg-3 col-sm-6 pb-2 mb-4">
                            <div class="case-study-item">
                                <div class="case-study-img">
                                    @if ($newsroom->image)
                                        <img class="img-fluid" src="{{ $newsroom->image->getUrl() }}" alt="">
                                    @endif
                                    <a href="{{ route('news.single', $newsroom->slug ?? '') }}"><i
                                            class="fas fa-long-arrow-alt-right"></i></a>
                                </div>
                                <div class="case-study-info">
                                    @if (!$newsroom->location == '')
                                        <a class="case-study-category"
                                            href="{{ route('news.single', $newsroom->slug ?? '') }}">{{ $newsroom->location ?? '' }}</a>
                                    @endif
                                    <h6 class="case-study-title"><a
                                            href="{{ route('news.single', $newsroom->slug ?? '') }}">{{ Str::limit($newsroom->title, 67, '...') ?? '' }}</a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </section>
@endsection
