@extends('layouts.public')

@section('title')
    - Careers
@endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url(https://balaoanwaterdistrict.gov.ph/images/career.jpg); background-position:center;background-repeat: no-repeat;background-size: cover;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white">Careers</h1>
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
                            <li class="breadcrumb-item active"><span>Careers</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-pb">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7">
                    <div class="section-title text-center mt-5">
                        <h4>Available Jobs</h4>
                        <p>
                            A career at Dalbit is more than the work you do. We aim to build a strong, mutually beneficial,
                            and
                            lasting relationship with all our employees. Our team comprises diverse individuals with years
                            of
                            experience who collectively possess broad skill sets and global capability to deliver local
                            solutions.
                        </p>
                        <p>
                            We endeavor to attract the best people in the market in the various fields, grow them and retain
                            them.
                            Join us today and grow your career in a friendly and fulfilling environment.
                        </p>
                        <p>
                            There are currently <strong>no</strong> available <strong>positions</strong>. However, you can
                            send us
                            your resume at <a href="mailto:careers@dalbitpetroleum.com">careers@dalbitpetroleum.com</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
