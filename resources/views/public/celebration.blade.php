@extends('layouts.public')

@section('title')
    Celebrating 20 Years of Dalbit
@endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/career.jpg') }}); background-position:center;background-repeat: no-repeat;background-size: cover;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white">Celebrating 20 Years of Dalbit</h1>
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
                            <li class="breadcrumb-item active"><span>20 Years of Dalbit</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="container dalbit-timeline">
        <h1 class="text-center m-3">Our 20 Year Growth</h1>
        <ul>
            <li style="--accent-color:#FAA12F">
                <div class="date">1997</div>
                <div class="title text-bold">Congo Petrol</div>
                <div class="descr">
                    <p>Congo Petroleum SARL (Licensee) incorporated in 1997.</p>
                </div>
            </li>
            <li style="--accent-color:#0C2360">
                <div class="date">2002</div>
                <div class="title">Dalbit Kenya</div>
            </li>
            <li style="--accent-color:#FAA12F">
                <div class="date">2004</div>
                <div class="title">Dalbit Uganda</div>
            </li>
            <li style="--accent-color:#0C2360">
                <div class="date">2006</div>
                <div class="title">Dalbit Licensee</div>
                <div class="descr">Dalbit International Limited South Sudan ( DILSS) establish in 2006.</div>
            </li>
            <li style="--accent-color:#FAA12F">
                <div class="date">2008</div>
                <div class="title">Dalbit Tanzania</div>
            </li>
            <li style="--accent-color:#0C2360">
                <div class="date">2008</div>
                <div class="title">Dalbit Mauritius</div>
            </li>
            <li style="--accent-color:#FAA12F">
                <div class="date">2008</div>
                <div class="title">Dalbit Zambia</div>
            </li>
            <li style="--accent-color:#0C2360">
                <div class="date">2015</div>
                <div class="title">Dalbit Mozambique</div>
            </li>
            <li style="--accent-color:#FAA12F">
                <div class="date">2020</div>
                <div class="title">Dalbit Dubai</div>
            </li>
        </ul>
    </section>
@endsection
