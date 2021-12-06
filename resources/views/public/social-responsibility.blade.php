@extends('layouts.public')

@section('title') Social Responsibility @endsection
@section('description')  We believe that our investment in people and communities serves as a catalyst in unlocking the great potential of Africa. Across our affiliates, we are developing human skills and investing in projects and initiatives that offer equal opportunities to our communities. Our key focus areas include education, health, community and the conservation of wildlife and the environment. @endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/1.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-white text-uppercase text-center">Social Responsibility</h2>
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
                            <li class="breadcrumb-item active"><span>Social Responsibility</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb social-responsibility">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center mb-4 mt-4">
                    <p>
                        We believe that our investment in people and communities serves as a catalyst in unlocking the
                        great
                        potential of Africa. Across our affiliates, we are developing human skills and investing in
                        projects and
                        initiatives that offer equal opportunities to our communities. Our key focus areas include
                        education,
                        health, community and the conservation of wildlife and the environment.
                    </p>
                </div>
            </div>
            <div class="row justify-content-center">
                @if (count($socialResponsibilities) > 0)
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
                @else
                    <div class="col-lg-12 mb-lg-0 mb-4 text-center">
                        <i class="fa fa-exclamation-triangle mb-3"></i>
                        <h2 class="mb-3">Coming Soon!</h2>
                    </div>
                @endif
            </div>
        </div>
    </section>

@endsection
