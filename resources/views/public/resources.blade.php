@extends('layouts.public')

@section('title')
    - Resources
@endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url(https://res.cloudinary.com/developerwilson/image/upload/v1634117946/dalbit/MicrosoftTeams-image_6_2_ucfywv.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white text-uppercase">resources</h1>
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
                            <li class="breadcrumb-item active"><span>Resources</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb m-5">
        <div class="container">
            <div class="row d-flex align-content-center flex-wrap">
                <div class="col-md-12 align-self-center pl-3 pl-lg-5">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="tab-content" id="v-pills-tabContent">
                                <div class="tab-pane fade show active" id="v-pills-who-we-are" role="tabpanel"
                                    aria-labelledby="v-pills-who-we-are-tab">
                                    <div class="row">
                                        <div class="col-lg-12 mb-lg-0 mb-4 text-center">
                                            <i class="fa fa-exclamation-triangle mb-3"></i>
                                            <h2 class="mb-3">Coming Soon!</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
