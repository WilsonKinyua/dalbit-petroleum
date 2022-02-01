@extends('layouts.public')

@section('title') About Us @endsection
@section('keywords') Dalbit,Member of JCG Holdings Ltd,East, Central and Southern Africa @endsection
@section('description')Dalbit is a member of JCG Holdings Ltd. Established in 2002, Dalbit supplies and distributes
    petroleum products and services across
East, Central and Southern Africa. @endsection
@section('image') {{ asset('images/about/8.png') }} @endsection

@section('content')


    <style>
        p {
            font-size: 17px;
        }

    </style>
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/1.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white">ABOUT DALBIT</h1>
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
                            <li class="breadcrumb-item active"><span>About us</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb">
        <div class="container">
            <div class="row d-flex align-content-center flex-wrap">
                <div class="col-md-6 align-self-center pl-3 pl-lg-5">
                    <div class="row">
                        <div class="col-md-7 col-lg-8 col-xl-9">
                            <div class="tab-content" id="v-pills-tabContent">
                                <div class="tab-pane fade show active" id="v-pills-who-we-are" role="tabpanel"
                                    aria-labelledby="v-pills-who-we-are-tab">
                                    <div class="row">
                                        <div class="col-lg-12 mb-lg-0 mb-4">
                                            <h6 class="mb-3">Who We Are</h6>
                                            <p>
                                                {{-- <strong>Dalbit is a member of JCG Holdings Ltd</strong>. --}}
                                                {{-- Established in 2002
                                                in Kenya, we supply
                                                and
                                                distribute
                                                petroleum products and services across East, Central and Southern
                                                Africa. --}}
                                                Established in 2002, Dalbit supplies and distributes petroleum products and
                                                services across East, Central and Southern Africa.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 align-self-center mb-md-0 mb-4">
                    <img class="img-fluid rounded" src="{{ asset('images/about/9.png') }}" alt="">
                </div>
            </div>
            <div class="row d-flex align-content-center flex-wrap mt-5 mb-3">
                <div class="col-md-6 align-self-center mb-md-0 mb-4">
                    <img class="img-fluid rounded" src="{{ asset('images/about/8.png') }}" alt="">
                </div>
                <div class="col-md-6 align-self-center pl-3 pl-lg-5">
                    <div class="row">
                        <div class="col-md-7 col-lg-8 col-xl-9">
                            <div class="tab-content" id="v-pills-tabContent">
                                <div class="tab-pane fade show active" id="v-pills-who-we-are" role="tabpanel"
                                    aria-labelledby="v-pills-who-we-are-tab">
                                    <div class="row">
                                        <div class="col-lg-12 mb-lg-0 mb-4">
                                            <h6 class="mb-3">Our Mission</h6>
                                            <p>
                                                To be the leading petroleum supply company across East, Central, and
                                                Southern Africa, fuelling regional growth through reliable distribution
                                                networks.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row d-flex align-content-center flex-wrap mt-5">
                <div class="col-md-6 align-self-center pl-3 pl-lg-5">
                    <div class="row">
                        <div class="col-md-7 col-lg-8 col-xl-9">
                            <div class="tab-content" id="v-pills-tabContent">
                                <div class="tab-pane fade show active" id="v-pills-who-we-are" role="tabpanel"
                                    aria-labelledby="v-pills-who-we-are-tab">
                                    <div class="row">
                                        <div class="col-lg-12 mb-lg-0 mb-4">
                                            <h6 class="mb-3">Our Vision</h6>
                                            <p>
                                                To be the preferred Petroleum company in East, Central and Southern
                                                Africa offering a total energy solution.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 align-self-center mb-md-0 mb-4">
                    <img class="img-fluid rounded" src="{{ asset('images/2.jpeg') }}" alt="">
                </div>
            </div>
            <div class="row d-flex align-content-center flex-wrap mt-5 mb-3">
                <div class="col-md-6 align-self-center mb-md-0 mb-4">
                    <img class="img-fluid rounded" src="{{ asset('images/csr_5.jpg') }}" alt="">
                </div>
                <div class="col-md-6 align-self-center pl-3 pl-lg-5">
                    <div class="row">
                        <div class="col-md-7 col-lg-8 col-xl-9">
                            <div class="tab-content" id="v-pills-tabContent">
                                <div class="tab-pane fade show active" id="v-pills-who-we-are" role="tabpanel"
                                    aria-labelledby="v-pills-who-we-are-tab">
                                    <div class="row">
                                        <div class="col-lg-12 mb-lg-0 mb-4">
                                            <h6 class="mb-3">Our Values</h6>
                                            <p>
                                                We take no shortcuts on ethics, compliance, and quality. We strive to be
                                                fair and caring towards our employees, customers, and community.
                                            </p>
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
    <section id="partners" class="space-ptb text-center bg-holder bg-overlay-black-80 bg-dark"
        data-jarallax='{"speed": 0.5}' style="background-image: url({{ asset('images/greetings.jpeg') }});">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-sm-10">
                    <h4 class="text-white">Our Partners</h4>
                    <p class="m-0 text-white bg-main-color p-4 p-lg-5 rounded">
                        Dalbit partners with leading stakeholders within the transport and logistics industry to boost our
                        fleet of trucks to service our customers.
                        <br> <br>
                        As a total energy solutions company, we partner with fuel infrastructure contractors to deliver
                        world-class facilities for our customers.
                    </p>
                </div>
            </div>
        </div>
    </section>
@endsection
