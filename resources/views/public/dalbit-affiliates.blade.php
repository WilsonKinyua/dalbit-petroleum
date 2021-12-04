@extends('layouts.public')

@section('title')
    - Dalbit Affiliates
@endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/1.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white text-uppercase">Dalbit Affiliates</h1>
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
                            <li class="breadcrumb-item active"><span>Dalbit Affiliates</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb team-grid">
        <div class="container">
            <div class="row text-center mt-5">
                @if (count($divisions) > 0)
                    @foreach ($divisions as $key => $division)
                        <div class="col-lg-4 col-sm-6 mb-4 pb-2 ">
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
