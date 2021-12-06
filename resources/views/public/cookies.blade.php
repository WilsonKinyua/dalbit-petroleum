@extends('layouts.public')

@section('title') Cookie Policy @endsection
@section('description') This page describes what information they gather, how we use it and why we sometimes need to store these cookies. We will also share how you can prevent these cookies from being stored however this may downgrade or 'break' certain elements of the site’s functionality. @endsection

@section('content')
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url({{ asset('images/1.jpg') }});">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="text-white">Cookie Policy</h1>
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
                            <li class="breadcrumb-item active"><span>Cookie Policy</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="space-ptb">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-4 mb-md-1">
                    <h5>What Are Cookies</h5>
                    <p>
                        As is common practice with almost all professional websites this site uses cookies, which are
                        tiny files that are downloaded to your computer, to improve your experience. This page describes
                        what information they gather, how we use it and why we sometimes need to store these cookies. We
                        will also share how you can prevent these cookies from being stored however this may downgrade
                        or 'break' certain elements of the site’s functionality.
                    </p>
                    <p>
                        For more general information on cookies see the Wikipedia article on HTTP Cookies.
                    </p>
                </div>
                <div class="col-md-12 mb-4 mb-md-1">
                    <h5>How We Use Cookies </h5>
                    <p>
                        We use cookies for a variety of reasons detailed below. Unfortunately, in most cases there are
                        no industry standard options for disabling cookies without completely disabling the
                        functionality and features they add to this site. It is recommended that you leave on all
                        cookies if you are not sure whether you need them or not in case they are used to provide a
                        service that you use.
                    </p>
                </div>
                <div class="col-md-12 mb-4 mb-md-1">
                    <h5>Disabling Cookies </h5>
                    <p>
                        You can prevent the setting of cookies by adjusting the settings on your browser (see your
                        browser Help for how to do this). Be aware that disabling cookies will affect the functionality
                        of this and many other websites that you visit. Disabling cookies will usually result in
                        disabling certain functionality and features of this site. Therefore, it is recommended that you
                        do not disable cookies.
                    </p>
                </div>
                <div class="col-md-12 mb-4 mb-md-1">
                    <h5>The Cookies We Set</h5>
                    <h6>Forms related cookies </h6>
                    <ul class="list-default mb-2">
                        <li>
                            When you submit data to through a form such as those found on contact pages or comment forms
                            cookies may be set to remember your user details for future correspondence.
                        </li>
                    </ul>
                    <h6>Third Party Cookies </h6>
                    <p>
                        In some special cases we also use cookies provided by trusted third parties. The following
                        section details which third party cookies you might encounter through this site.
                    </p>
                    <ul class="list-default mb-2">
                        <li>
                            This site uses Google Analytics which is one of the most widespread and trusted analytics
                            solutions on the web for helping us to understand how you use the site and ways that we can
                            improve your experience. These cookies may track things such as how long you spend on the
                            site and the pages that you visit so we can continue to produce engaging content.
                        </li>
                        <li>
                            For more information on Google Analytics cookies, see the official Google Analytics page.
                        </li>
                        <li>
                            From time to time we test new features and make subtle changes to the way that the site is
                            delivered. When we are still testing new features, these cookies may be used to ensure that
                            you receive a consistent experience whilst on the site whilst ensuring we understand which
                            optimizations our users appreciate the most.
                        </li>
                        <li>
                            We also use social media buttons and/or plugins on this site that allow you to connect with
                            your social network in various ways. For these to work the following social media sites
                            including; Sharing through Twitter® and Facebook ®, will set cookies through our site which
                            may be used to enhance your profile on their site or contribute to the data they hold for
                            various purposes outlined in their respective privacy policies.
                        </li>
                    </ul>
                </div>
                <div class="col-md-12 mb-4 mb-md-1">
                    <h5>More Information</h5>
                    <p>
                        Hopefully that has clarified things for you and as was previously mentioned if there is
                        something that you aren't sure whether you need or not it's usually safer to leave cookies
                        enabled in case it does interact with one of the features you use on our site..
                    </p>
                    <p>
                        However, if you are still looking for more information you can contact us through one of our
                        preferred contact methods: <br>
                        <strong>Email</strong>: <a
                            href="mailto:dataprotection@dalbitpetroleum.com">dataprotection@dalbitpetroleum.com</a>
                    </p>
                </div>

            </div>
        </div>
    </section>
@endsection
