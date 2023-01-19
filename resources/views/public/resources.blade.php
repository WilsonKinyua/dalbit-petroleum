@extends('layouts.public')


@section('title')
    Resources
@endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/1.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="text-white text-uppercase">resources</h3>
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
    <section class="m-5">
        <div class="container">
            <div class="row d-flex align-content-center flex-wrap">
                <div class="col-md-12 align-self-center pl-3 pl-lg-5">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="tab-content" id="v-pills-tabContent">
                                <div class="tab-pane fade show active" id="v-pills-who-we-are" role="tabpanel"
                                    aria-labelledby="v-pills-who-we-are-tab">
                                    <div class="row">
                                        <div class="col-lg-12 mb-lg-0 mb-4">
                                            <h3>Downloads</h3>
                                        </div>
                                        @if (count($resources) > 0)
                                            @foreach ($resources as $key => $resource)
                                                <div class="col-md-12 bg-white resources-card">
                                                    <div class="d-flex justify-content-between">
                                                        <div>
                                                            <h4 class="main-theme-color">
                                                                {{-- <a data-toggle="modal"
                                                                    data-target="#resourcesModal{{ $resource->id }}"
                                                                    title="Click to view details">{{ $resource->name ?? '' }}</a> --}}
                                                                <a target="_blank" href="{{ $resource->file->getUrl() }}"
                                                                    title="Click to view details">{{ $resource->name ?? '' }}</a>
                                                            </h4>
                                                        </div>
                                                        <div class="d-flex justify-content-between">
                                                            {{-- <a href="{{ $resource->file->getUrl() }}"
                                                                download="{{ $resource->name ?? '' }}" class="text-center">
                                                                <div>
                                                                    <img src="{{ asset('images/download.svg') }}"
                                                                        alt="">
                                                                </div>
                                                                <div>
                                                                    <span class=" main-theme-color">Download</span>
                                                                </div>
                                                            </a> --}}
                                                            <a href="{{ $resource->file->getUrl() }}"
                                                                download="{{ $resource->name ?? '' }}" class="text-center">
                                                                <div>
                                                                    <i class="fa fa-download"></i>
                                                                </div>
                                                                <div>
                                                                    <span class=" main-theme-color">Download</span>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                {{-- <!-- Modal -->
                                                <div class="modal fade" id="resourcesModal{{ $resource->id }}"
                                                    tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">
                                                                    {{ $resource->name ?? '' }}
                                                                </h5>
                                                                <button type="button" class="close"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                {!! $resource->details ?? '' !!}
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div> --}}
                                            @endforeach
                                        @else
                                            <div class="col-lg-12 mb-lg-0 mb-4 text-center">
                                                <i class="fa fa-exclamation-triangle mb-3"></i>
                                                <h2 class="mb-3">Coming Soon!</h2>
                                            </div>
                                        @endif
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
