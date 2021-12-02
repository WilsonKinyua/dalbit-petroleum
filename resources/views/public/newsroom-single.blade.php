@extends('layouts.public')

@section('title')
    - {{ $newsroom->title }}
@endsection

@section('content')


    <!--=================================
        Inner Header -->
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}'
            style="background-image: url(https://www.dalbitpetroleum.com/news/Dalbit-BSL-Storage-Deal-Tazama-Pipelines.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="text-white">This time is used also to put things in their places</h4>
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
                            <li class="breadcrumb-item"><a href="blog.html">Blog</a></li>
                            <li class="breadcrumb-item active"><span>This time is used also to put things in their
                                    places</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--=================================
              Inner Header -->

    <!--=================================
              Classic Left Sidebar -->
    <section class="space-ptb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 order-1 order-lg-1">
                    <div class="blog-post blog-details">
                        <!-- <div class="blog-post-image">
                          <img class="img-fluid" src="https://www.dalbitpetroleum.com/news/Dalbit-BSL-Storage-Deal-Tazama-Pipelines.jpg" alt="">
                        </div> -->
                        <div class="blog-post-content">
                            <div class="blog-post-info">
                                <div class="blog-post-author">
                                    <a href="#" class="btn btn-link"><i class="far fa-folder-open"></i>Marketing</a>
                                </div>
                                <div class="blog-post-date"><a href="#"><i class="far fa-calendar"></i>Jan 4, 2020 </a>
                                </div>
                            </div>
                            <div class="blog-post-details">
                                <p>Concentrate on your breathing, engage in the moment and spend some time being still,
                                    quiet and drift
                                    inside of your own mind. Hypnotize yourself here. Step two: Use your imagination to
                                    imagine walking
                                    down the path of your life. Ok, I know that some of you just cried out “but I can’t
                                    visualise!” First
                                    up, if you believe you can’t then of course you can’t. Second up, just imagine these
                                    things. They do
                                    not have to be in cinema screen perfect detail.</p>
                                <p class="mb-4">You can remember what colour what your front door is, right? You
                                    can
                                    remember what your
                                    childhood bedroom is like, right? That is your imagination doing that. You know the
                                    sound that your
                                    feet make when you walk across gravel don’t you? You can imagine it, but you are not
                                    hearing it in
                                    your ears, are you? Just imagine these things as best as you can. Failing that,
                                    pretend that you are
                                    imagining them and that will do the trick. So, as you imagine walking along the path
                                    of your life,
                                    notice that every step forwards is a minute, an hour or a day into your future.</p>
                                <p class="mb-md-5 mb-4">If you look back, you will notice that your past is there;
                                    everything you have
                                    ever done or experienced is behind you. Become aware of the temperature, the sights,
                                    the sounds and
                                    enjoy walking along the path of your life. Make it sensory rich and get comfortable
                                    with the idea.</p>
                                <div class="d-sm-flex bg-light border-radius p-4 p-md-5 mb-md-5 mb-4">
                                    <i class="fas fa-quote-left pr-4 fa-6x text-primary"></i>
                                    <p class="mb-0 text-dark">Imagine the feeling of your feet walking along the path
                                        and the sound they
                                        make. Engage with the idea of really being there. Step Three: Imagine that a few
                                        more steps ahead
                                        there is a place where the path splits, where is goes off to the left and off to
                                        the right.</p>
                                </div>
                            </div>
                        </div>
                        <hr class="my-4 my-sm-5">
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
