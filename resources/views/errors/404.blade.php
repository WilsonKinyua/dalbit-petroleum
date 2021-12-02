{{-- @extends('errors::minimal')

@section('title', __('Not Found'))
@section('code', '404')
@section('message', __('Not Found')) --}}

@extends('layouts.public')


@section('title')
    - Not Found
@endsection

@section('content')


    <!--=================================
    Inner Header -->
    <div class="inner-header">
        <div class="breadcrumb-title bg-overlay-black-80 bg-dark" data-jarallax='{"speed": 0.5}' style="background-image: url(images/bg/01.jpg);">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <h1 class="text-white text-uppercase">404 error</h1>
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
                  <li class="breadcrumb-item active"><span>404 Error</span></li>
                </ol>
              </div>
            </div>
          </div>
        </div>
      </div>
    <!--=================================
    Inner Header -->

    <!--=================================
    Error 404 -->
    <section class="space-ptb">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8">
            <div class="error-404 text-center">
              <h1>404</h1>
              <h4>Sorry We Can't Find That Page.</h4>
              <p>Can't find what you looking for? Search below or go back to <a href="/"> Home Page</a></p>
              <div class="row">
                <div class="col-md-8 offset-md-2">
                  <form class="form-inline input-with-btn">
                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Search...">
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="btn-icon fa fa-search"></i><span>Search</span></button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=================================
    Error 404 -->

@endsection
