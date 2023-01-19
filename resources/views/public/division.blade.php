@extends('layouts.public')

@section('title') {{ $division->division_type->title ?? '' }} | {{ $division->country->name ?? '' }} @endsection
@section('image') {{ $division->country_image->getUrl() ?? '' }} @endsection
@section('description') {!! $division->country_description ?? '' !!} @endsection

@section('css')
    <style>
        .service-item .service-img {
            width: 100%;
            padding: 20px;
            background-color: white;
        }

    </style>
@endsection
@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/1.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="text-white text-uppercase">{{ $division->country->name ?? '' }}</h3>
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
                            <li class="breadcrumb-item">
                                @if ($division->division_type_id == 1)
                                    <a href="{{ route('affiliates.division') }}">Dalbit Affiliates</a>
                                @elseif ($division->division_type_id == 2)
                                    <a href="{{ route('trading.division') }}">Dalbit Trading</a>
                                @elseif ($division->division_type_id == 3)
                                    <a href="{{ route('licensees.division') }}">Dalbit Licensees</a>
                                @endif
                            </li>
                            <li class="breadcrumb-item active text-capitalize"><span>
                                    {{ $division->country->name ?? '' }}</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb">
        <div class="container">
            <div class="row d-flex align-content-center flex-wrap">
                <div class="col-md-4 align-self-center mb-md-0 mb-4">
                    <div class="card">
                        <div class="card-body">
                            @if ($division->country_image)
                                <img class="img-fluid " src="{{ $division->country_image->getUrl() }}" alt="">
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-md-8 align-self-center pl-3 pl-lg-5">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="tab-content" id="v-pills-tabContent">
                                <div class="tab-pane fade show active" id="v-pills-who-we-are" role="tabpanel"
                                    aria-labelledby="v-pills-who-we-are-tab">
                                    <div class="row">
                                        <div class="col-lg-12 mb-lg-0 mb-4">
                                            <h6 class="mb-3">{{ $division->country->company ?? '' }}</h6>
                                            <p>
                                                {!! $division->country_description ?? '' !!}
                                            </p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @if ($division->transport_image === null && $division->infrastructure_storage_image === null)
                    @if ($division->operation_image)
                        <div class="col-md-4 align-self-center mb-md-0 mb-4 mt-5">
                            <div class="card">
                                <div class="card-body">
                                    <img class="img-fluid " src="{{ $division->operation_image->getUrl() }}" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 align-self-center pl-3 pl-lg-5 mt-5">
                            <div class="row">
                                <div class="col-md-12 col-lg-12 col-xl-12">
                                    <div class="tab-content" id="v-pills-tabContent">
                                        <div class="tab-pane fade show active" id="v-pills-who-we-are" role="tabpanel"
                                            aria-labelledby="v-pills-who-we-are-tab">
                                            <div class="row">
                                                <div class="col-lg-12 mb-lg-0 mb-4">
                                                    <h6 class="mb-3">Operations</h6>
                                                    <p>
                                                        {!! $division->operation_description ?? '' !!}
                                                    </p>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                @endif
            </div>
        </div>
    </section>
    <section class="space-ptb">
        <div class="container">
            <div class="row justify-content-start">
                @if ($division->operation_image != null && $division->transport_image != null && $division->infrastructure_storage_image != null)
                    @if ($division->operation_image)
                        <div class="col-sm-6 col-lg-4 mb-4 operations-img">
                            <div class="service-item">
                                <div class="service-img">
                                    <img class="img-fluid" src="{{ $division->operation_image->getUrl() }}" alt="">
                                    <a data-toggle="modal" data-target="#operationsModal"><i
                                            class="fas fa-long-arrow-alt-right"></i></a>
                                </div>
                                <div class="service-info">
                                    <h6 class="service-info-title"><a data-toggle="modal"
                                            data-target="#operationsModal">Operations</a></h6>
                                </div>
                            </div>
                        </div>
                        <!-- OPerations Modal -->
                        <div class="modal fade" id="operationsModal" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="mr-3 mt-3">
                                        <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            {!! $division->operation_description ?? '' !!}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                    @if ($division->transport_image)
                        <div class="col-sm-6 col-lg-4 mb-4">
                            <div class="service-item">
                                <div class="service-img">
                                    <img class="img-fluid" src="{{ $division->transport_image->getUrl() }}" alt="">
                                    <a data-toggle="modal" data-target="#transportModal"><i
                                            class="fas fa-long-arrow-alt-right"></i></a>
                                </div>
                                <div class="service-info">
                                    <h6 class="service-info-title"><a href="#">Transport</a></h6>
                                </div>
                            </div>
                        </div>
                        <!-- Transport Modal -->
                        <div class="modal fade" id="transportModal" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="mr-3 mt-3">
                                        <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            {!! $division->transport_description ?? '' !!}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                    @if ($division->infrastructure_storage_image)
                        <div class="col-sm-6 col-lg-4 mb-4">
                            <div class="service-item">
                                <div class="service-img">
                                    <img class="img-fluid"
                                        src="{{ $division->infrastructure_storage_image->getUrl() }}" alt="">
                                    <a data-toggle="modal" data-target="#infrastructure"><i
                                            class="fas fa-long-arrow-alt-right"></i></a>
                                </div>
                                <div class="service-info">
                                    <h6 class="service-info-title"><a data-toggle="modal"
                                            data-target="#infrastructure">Infrastructure &
                                            Storage</a></h6>
                                </div>
                            </div>
                        </div>
                        <!-- Infrastructure Modal -->
                        <div class="modal fade" id="infrastructure" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="mr-3 mt-3">
                                        <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            {!! $division->infrastructure_storage_description ?? '' !!}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endif
                @endif

                @if (!$division->contacts == '')
                    <div class="col-lg-4"></div>
                    <div class="col-lg-6">
                        <a data-toggle="modal" data-target="#contactModal" class="btn btn-primary  mx-0 mx-md-3">
                            <i class="btn-icon change-on-hover"> Contacts <i class="fas fa-long-arrow-alt-right"></i></i>
                            <span>Contacts</span>
                        </a>
                    </div>
                    <!-- contactModal -->
                    <div class="modal fade" id="contactModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="mr-3 mt-3">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <h6 class="mb-3">Headquarters</h6>
                                    @if ($division->contacts->location)
                                        <p class="mb-1">{!! $division->contacts->location !!}</p>
                                    @endif
                                    @if ($division->contacts->telephone)
                                        <div><strong>Telephone:</strong><span
                                                class="text-primary ml-1">{!! $division->contacts->telephone !!}</span>
                                        </div>
                                    @endif
                                    @if ($division->contacts->fax)
                                        <div><strong>Fax:</strong><span
                                                class="text-primary ml-1">{!! $division->contacts->fax !!}</span>
                                        </div>
                                    @endif
                                    @if ($division->contacts->email)
                                        <div><strong>E-mail:</strong><span
                                                class="text-primary ml-1">{!! $division->contacts->email !!}</span>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            </div>
        </div>
        </div>
    </section>

@endsection
