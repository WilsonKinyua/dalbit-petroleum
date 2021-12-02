@extends('layouts.public')

@section('title')
    - Social Responsibility |
@endsection

@section('content')


    <!--=================================
                Inner Header -->
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url(https://res.cloudinary.com/developerwilson/image/upload/v1634117946/dalbit/MicrosoftTeams-image_6_2_ucfywv.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white text-capitalize">{{ $socialResponsibility->title }}</h1>
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
                            <li class="breadcrumb-item"><a href="{{ route('social.responsibility') }}">Social
                                    Responsibility</a>
                            </li>
                            <li class="breadcrumb-item active"><span>{{ $socialResponsibility->title }}</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--=================================
                    Inner Header -->
    <!--=================================
                    About us  -->

    <section class="space-ptb">
        <div class="container">
            <div class="row d-flex align-content-center flex-wrap">
                <div class="col-md-6 mb-md-0 mb-4">
                    @if ($socialResponsibility->image)
                        <img class="img-fluid rounded" src="{{ $socialResponsibility->image->getUrl() }}" alt=""
                            width="900">
                    @endif
                </div>
                <div class="col-md-6 align-self-center ">
                    <p>
                        {!! $socialResponsibility->description !!}
                    </p>
                </div>

            </div>
        </div>
    </section>

@endsection
