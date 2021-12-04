@extends('layouts.public')

@section('title')
    - Our Policies
@endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/policies.jpeg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white">OUR POLICIES</h1>
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
                            <li class="breadcrumb-item active"><span>Our Policies</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 mb-md-5 mb-4">
                    <div class="feature-info feature-info-style-3">
                        <div class="feature-info-icon">
                            <i class="fa fa-briefcase-medical"></i>
                        </div>
                        <div class="feature-info-content">
                            <h6 class="feature-info-title">Health And Safety Policy</h6>
                            <p>At Dalbit, we are committed to protecting employees, contractors and the public from
                                injury and illness.
                            </p>
                            <p>
                                We are fully compliant with all applicable health, safety, security and environment
                                (HSSE) laws, and international industry standards.
                                We also apply a systematic approach to HSSE management to ensure continual improvements,
                                including setting "SMART" HSSE objectives and performing regular audits and reviews. Our
                                staff receive regular training and are fully aware of their roles and responsibilities
                                when it comes to health and safety.
                            </p>
                            <br>
                            <a class="btn btn-link text-dark" target="_blank"
                                href="{{ asset('documents/Dalbit-Petroleum-Health-Safety-Security-and-the-Environment-HSSE-Policy.pdf') }}">Learn
                                more<i class="fas fa-long-arrow-alt-right ml-1"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 mb-md-5 mb-4">
                    <div class="feature-info feature-info-style-3">
                        <div class="feature-info-icon">
                            <i class="fa fa-tree"></i>
                        </div>
                        <div class="feature-info-content">
                            <h6 class="feature-info-title">Environment Policy</h6>
                            <p>We conduct environmental impact assessments and audits (including risk assessment, risk
                                mitigation, and contingency planning) on a routine basis in our operations to ensure
                                full regulatory compliance.
                            </p>
                            <p>
                                As a responsible operator, Dalbit has formal systems in place to identify the potential
                                impact of each of our petroleum operations. This helps us contain and control any issues
                                that might arise.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 mb-md-5 mb-4">
                    <div class="feature-info feature-info-style-3">
                        <div class="feature-info-icon">
                            <i class="fa fa-hand-holding-usd"></i>
                        </div>
                        <div class="feature-info-content">
                            <h6 class="feature-info-title">Anti-bribery Policy</h6>
                            <p>We value our reputation for financial probity and reliability. Dalbit limits its exposure to
                                bribery
                                by:
                            </p>
                            <ul class="list">
                                <li><i class="fas fa-check"></i> Setting out a clear an anti-bribery policy.</li>
                                <li><i class="fas fa-check"></i> Training all employees to recognize and avoid attempted
                                    bribery.</li>
                                <li><i class="fas fa-check"></i> Encouraging all employees to be vigilant and to report
                                    any suspicion of
                                    bribery through discreet channels of communication.
                                </li>
                                <li><i class="fas fa-check"></i> Rigorously investigating instances of alleged bribery and
                                    assisting the
                                    police and other appropriate authorities in any resultant prosecution.</li>
                                <li><i class="fas fa-check"></i> Taking firm action against any individuals involved in
                                    bribery. </li>
                            </ul>
                            <br>
                            <a class="btn btn-link text-dark" target="_blank"
                                href="{{ asset('documents/Dalbit-Petroleum-Anti-bribery-Policy.pdf') }}">Learn
                                more<i class="fas fa-long-arrow-alt-right ml-1"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
