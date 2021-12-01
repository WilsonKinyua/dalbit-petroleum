<?php

Route::group(['prefix' => 'v1', 'as' => 'api.', 'namespace' => 'Api\V1\Admin', 'middleware' => ['auth:sanctum']], function () {
    // Users
    Route::apiResource('users', 'UsersApiController');

    // Slider
    Route::post('sliders/media', 'SliderApiController@storeMedia')->name('sliders.storeMedia');
    Route::apiResource('sliders', 'SliderApiController');

    // Newsroom
    Route::post('newsrooms/media', 'NewsroomApiController@storeMedia')->name('newsrooms.storeMedia');
    Route::apiResource('newsrooms', 'NewsroomApiController');

    // Resources
    Route::post('resources/media', 'ResourcesApiController@storeMedia')->name('resources.storeMedia');
    Route::apiResource('resources', 'ResourcesApiController', ['except' => ['show']]);

    // Countries
    Route::apiResource('countries', 'CountriesApiController');

    // Category
    Route::post('categories/media', 'CategoryApiController@storeMedia')->name('categories.storeMedia');
    Route::apiResource('categories', 'CategoryApiController', ['except' => ['show', 'update']]);

    // Division
    Route::post('divisions/media', 'DivisionApiController@storeMedia')->name('divisions.storeMedia');
    Route::apiResource('divisions', 'DivisionApiController');

    // Contact Information
    Route::apiResource('contact-informations', 'ContactInformationApiController');

    // Social Responsibility
    Route::post('social-responsibilities/media', 'SocialResponsibilityApiController@storeMedia')->name('social-responsibilities.storeMedia');
    Route::apiResource('social-responsibilities', 'SocialResponsibilityApiController');
});
