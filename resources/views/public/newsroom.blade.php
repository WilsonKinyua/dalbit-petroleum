@extends('layouts.public')

@section('title')
    - Newsroom
@endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url(https://www.dawamu.ac.ke/wp-content/uploads/2018/11/News_765x350px.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white">News</h1>
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
                            <li class="breadcrumb-item active"><span>News</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb case-study">
        <div class="container">
            <div class="row">
                @if (count($newsrooms) > 0)
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
