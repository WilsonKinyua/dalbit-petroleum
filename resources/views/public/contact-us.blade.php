@extends('layouts.public')

@section('title')
    - Contact Us
@endsection

@section('content')

    <!--=================================
                                Inner Header -->
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url(https://www.dalbitpetroleum.com/img/drcongo/contact.jpg); background-repeat:no-repeat;background-position:center;background-size:cover;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white">Contact Us</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ol class="breadcrumb-list list-unstyled d-flex">
                            <li class="breadcrumb-item"><a href="/"><i class="fas fa-home mr-1"></i>Home</a>
                            </li>
                            <li class="breadcrumb-item active"><span>Contact us</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--=================================
                                    Inner Header -->

    <!--=================================
                                    Contact Address -->
    <section class="space-ptb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h2 class="text-center">Contact Us</h2>
                        <p class="text-center">We are here to help you. Please get in touch with us.</p>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h3 class="">Dalbit Affiliates</h3>
                        </div>
                        @if (count($dalbitAffiliates) > 0)
                            @foreach ($dalbitAffiliates as $contact)
                                <div class="col-md-4 mt-1">
                                    <h6 class="text-uppercase"><strong>Dalbit {{ $contact->country->name ?? '' }}</strong>
                                    </h6>
                                    <p>{!! $contact->location ?? '' !!}</p>
                                    <div><strong>Telephone:</strong>
                                        <span class="text-primary ml-1">
                                            {{ $contact->telephone ?? '' }}
                                        </span>
                                    </div>
                                    <div><strong>FAX:</strong><span class="text-primary ml-1">{{ $contact->fax ?? '' }}
                                        </span></div>
                                    <div><strong>E-mail:</strong><span class="text-primary ml-1"><a
                                                href="mailto:{{ $contact->email ?? '' }}">{{ $contact->email ?? '' }}</a></span>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
                <div class="col-md-12">
                    <hr class="m-0 mt-3 mb-3">
                </div>
                <div class="col-md-12">
                    <div class="row mb-4">
                        <div class="col-md-12">
                            <h3 class="">Dalbit Trading</h3>
                        </div>
                        @if (count($dalbitTrading) > 0)
                            @foreach ($dalbitTrading as $contact)
                                <div class="col-md-4 mt-1">
                                    <h6 class="text-uppercase"><strong>Dalbit {{ $contact->country->name ?? '' }}</strong>
                                    </h6>
                                    <p>{!! $contact->location ?? '' !!}</p>
                                    <div><strong>Telephone:</strong>
                                        <span class="text-primary ml-1">
                                            {{ $contact->telephone ?? '' }}
                                        </span>
                                    </div>
                                    <div><strong>FAX:</strong><span class="text-primary ml-1">{{ $contact->fax ?? '' }}
                                        </span></div>
                                    <div><strong>E-mail:</strong><span class="text-primary ml-1"><a
                                                href="mailto:{{ $contact->email ?? '' }}">{{ $contact->email ?? '' }}</a></span>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
                <div class="col-md-12">
                    <hr class="m-0 mt-3 mb-3">
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="">Dalbit Licensees</h3>
                        </div>
                        @if (count($dalbitLicensees) > 0)
                            @foreach ($dalbitLicensees as $contact)
                                <div class="col-md-4 mt-1">
                                    <h6 class="text-uppercase"><strong>Dalbit
                                            {{ $contact->country->name ?? '' }}</strong>
                                    </h6>
                                    <p>{!! $contact->location ?? '' !!}</p>
                                    <div><strong>Telephone:</strong>
                                        <span class="text-primary ml-1">
                                            {{ $contact->telephone ?? '' }}
                                        </span>
                                    </div>
                                    <div><strong>FAX:</strong><span class="text-primary ml-1">{{ $contact->fax ?? '' }}
                                        </span></div>
                                    <div><strong>E-mail:</strong><span class="text-primary ml-1"><a
                                                href="mailto:{{ $contact->email ?? '' }}">{{ $contact->email ?? '' }}</a></span>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
                                Map -->
    <section class="space-pb mt-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form class="form-flat-style" method="POST" action="{{ route('contact.message')}}">
                        @csrf
                        <div class="row">
                            <div class="form-group col-md-4">
                                <input type="text" class="form-control" placeholder="Your Name" name="name" required>
                            </div>
                            <div class="form-group col-md-4">
                                <input type="email" class="form-control" placeholder="Your Email" name="email" required>
                            </div>
                            <div class="form-group col-md-4">
                                <input type="text" class="form-control" placeholder="Your Number" name="telephone_number">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <textarea rows="8" class="form-control" id="sector" placeholder="Your Message" name="message" required></textarea>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-flat"><i
                                class="btn-icon fas fa-paper-plane"></i><span>
                                Send Message</span></button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--=================================
                                Map -->
@endsection
