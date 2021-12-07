@extends('layouts.public')

@section('title') {{ $newsroom->title }} @endsection
@section('image') {{ $newsroom->image->getUrl() ?? asset('images/logo.png')  }} @endsection
@section('description') {!! $newsroom->article_sentence ?? Str::limit($newsroom->title, 200, '...') !!} @endsection
@section('keywords') {{ $newsroom->seo_keywords ?? 'Dalbit, BSL Infrastructure, Fuel Depot, Sustainable Energy' }} @endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}' @if ($newsroom->image)
            style="background-image:
            url({{ $newsroom->image->getUrl() }});background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;"
        @else
            style="background-image:
            url({{ asset('images/Dalbit-BSL-Storage-Deal-Tazama-Pipelines.jpg')}}); background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;"
            @endif
            >
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h6 class="text-white">{{ $newsroom->title }}</h6>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ol class="breadcrumb-list list-unstyled d-flex">
                            <li class="breadcrumb-item"><a href="/"><i class="fas fa-home mr-1"></i>Home</a></li>
                            <li class="breadcrumb-item"><a href="{{ route('top.news') }}">News</a></li>
                            {{-- <li class="breadcrumb-item active"><span>{{ Str::limit($newsroom->title, 100, '...') }}</span>
                            </li> --}}
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 order-1 order-lg-1">
                    <div class="blog-post blog-details">
                        <div class="row">
                            @if (!$newsroom->article_sentence == '')
                                <div class="col-md-12 text-center">
                                    <div class="d-sm-flex bg-light border-radius p-2 p-md-3 mb-md-3 mb-5 mt-5">
                                        <p class="mb-0 text-dark">
                                            {!! $newsroom->article_sentence !!}
                                        </p>
                                    </div>
                                </div>
                            @endif
                            <div class="col-md-12">
                                <div class="blog-post-image left-side">
                                    @if ($newsroom->image)
                                        <img class="img-fluid" src="{{ $newsroom->image->getUrl() }}" alt="">
                                        @if (!$newsroom->photo_caption == '')
                                            <div class="d-sm-flex bg-light border-radius p-2 p-md-3 mb-md-3 mb-4 mt-1">
                                                <p class="mb-0 text-dark">
                                                    {!! $newsroom->photo_caption !!}
                                                </p>
                                            </div>
                                        @endif
                                    @endif
                                </div>
                                <style>
                                    img {
                                        max-width: 95%
                                    }
                                </style>
                                @if (!$newsroom->description == '')
                                    <div class="blog-post-content">
                                        <div class="blog-post-details">
                                            <p>
                                                {!! $newsroom->description !!}
                                            </p>
                                        </div>
                                    </div>
                                @endif
                            </div>
                        </div>
                        <hr class="my-4 my-sm-5">
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
