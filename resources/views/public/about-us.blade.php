@extends('layouts.public')

@section('title')
    - About Us
@endsection

@section('content')


    <style>
        p {
            font-size: 17px;
        }

    </style>

    <!--=================================
            Inner Header -->
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url(https://res.cloudinary.com/developerwilson/image/upload/v1634117946/dalbit/MicrosoftTeams-image_6_2_ucfywv.jpg);">
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
    <!--=================================
          Inner Header -->
    <!--=================================
          About us  -->

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
                                                <strong>Dalbit is a member of JCG Holdings Ltd</strong>. Established in 2002
                                                in Kenya, we supply
                                                and
                                                distribute
                                                petroleum products and services across East, Central and Southern
                                                Africa.
                                            </p>
                                            {{-- <a href="#" class="btn btn-primary  mx-0 mx-md-3">
                                                <i class="btn-icon change-on-hover"> Read More <i
                                                        class="fas fa-long-arrow-alt-right"></i></i>
                                                <span>Read More</span>
                                            </a> --}}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 align-self-center mb-md-0 mb-4">
                    <img class="img-fluid rounded" src="./images//about/9.png" alt="">
                </div>
            </div>
            <div class="row d-flex align-content-center flex-wrap mt-5 mb-3">
                <div class="col-md-6 align-self-center mb-md-0 mb-4">
                    <img class="img-fluid rounded" src="./images//about/8.png" alt="">
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
                                                To be the leading petroleum supply company across East, Central and Southern
                                                Africa, fuelling
                                                regional growth through reliable distribution networks.
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
                                            <h6 class="mb-3">Vision</h6>
                                            <p>
                                                To be the preferred Petroleum company in East, Central and Southern Africa
                                                offering a total
                                                energy solution.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 align-self-center mb-md-0 mb-4">
                    <img class="img-fluid rounded"
                        src="https://www.ft.com/__origami/service/image/v2/images/raw/https%253A%252F%252Fs3-ap-northeast-1.amazonaws.com%252Fpsh-ex-ftnikkei-3937bb4%252Fimages%252F3%252F6%252F2%252F3%252F30293263-3-eng-GB%252FCropped-1603990366RTX6GFGI.JPG?width=1024&height=512&fit=cover&gravity=faces&source=nar-cms"
                        alt="">
                </div>
            </div>
            <div class="row d-flex align-content-center flex-wrap mt-5 mb-3">
                <div class="col-md-6 align-self-center mb-md-0 mb-4">
                    <img class="img-fluid rounded" src="https://www.dalbitpetroleum.com/img/kenya/csr_5.jpg" alt="">
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
                                            <p>We take no shortcuts on ethics, compliance, and quality. We strive to be
                                                fair and caring towards our employees, customers and community.
                                            </p>
                                            {{-- <a href="#" class="btn btn-primary  mx-0 mx-md-3">
                                                <i class="btn-icon change-on-hover"> Read More <i
                                                        class="fas fa-long-arrow-alt-right"></i></i>
                                                <span>Read More</span>
                                            </a> --}}
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

    <!--=================================
          Site Content -->
    <section id="partners" class="space-ptb text-center bg-holder bg-overlay-black-80 bg-dark"
        data-jarallax='{"speed": 0.5}'
        style="background-image: url(https://images.unsplash.com/photo-1521791136064-7986c2920216?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1469&q=80);">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-sm-10">
                    <h4 class="text-white">Our Partners</h4>
                    <p class="m-0 text-white bg-main-color p-4 p-lg-5 rounded">
                        Dalbit Petroleum partners with leading stakeholders within the transport and logistics industry to
                        boost our
                        own fleet of trucks to service our customers. As a total solutions company, we also partner with
                        fuel
                        infrastructure contractors to deliver world class facilities for our customers.
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
          Site Content -->

@endsection
