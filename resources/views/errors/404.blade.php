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
