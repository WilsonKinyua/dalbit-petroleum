<?php



// public routes
Route::get('/', 'Publics\HomepageController@index')->name('public.home');
Route::get('about-us', 'Publics\HomepageController@aboutUs')->name('about.us');
Route::get('dalbit-affiliates', 'Publics\HomepageController@dalbitAffiliates')->name('affiliates.division');
Route::get('dalbit-trading', 'Publics\HomepageController@dalbitTrading')->name('trading.division');
Route::get('dalbit-licensees', 'Publics\HomepageController@dalbitLicensees')->name('licensees.division');
Route::get('country/{slug}', 'Publics\HomepageController@division')->name('division.country');
Route::get('social-responsibility', 'Publics\HomepageController@socialResponsibility')->name('social.responsibility');
Route::get('social-responsibility/{slug}', 'Publics\HomepageController@ourPillars')->name('our.pillars');
Route::get('careers', 'Publics\HomepageController@Careers')->name('careers.us');
Route::get('news', 'Publics\HomepageController@news')->name('top.news');
Route::get('news/{slug}', 'Publics\HomepageController@newsSingle')->name('news.single');
Route::get('contact-us', 'Publics\HomepageController@contactUs')->name('contact.us');
Route::get('our-policies', 'Publics\HomepageController@ourPolicies')->name('our.policies');
Route::get('resources', 'Publics\HomepageController@resources')->name('resources');
Route::get('privacy-policy', 'Publics\HomepageController@privacyPolicy')->name('privacy.policy');
Route::get('cookies', 'Publics\HomepageController@cookies')->name('cookies');


// Route::redirect('/', '/login');
Route::get('/home', function () {
    if (session('status')) {
        return redirect()->route('admin.home')->with('status', session('status'));
    }

    return redirect()->route('admin.home');
});

Auth::routes(['register' => false]);


// private routes
Route::group(['prefix' => 'admin', 'as' => 'admin.', 'namespace' => 'Admin', 'middleware' => ['auth']], function () {
    Route::get('/', 'HomeController@index')->name('home');
    // Permissions
    Route::delete('permissions/destroy', 'PermissionsController@massDestroy')->name('permissions.massDestroy');
    Route::resource('permissions', 'PermissionsController');

    // Roles
    Route::delete('roles/destroy', 'RolesController@massDestroy')->name('roles.massDestroy');
    Route::resource('roles', 'RolesController');

    // Users
    Route::delete('users/destroy', 'UsersController@massDestroy')->name('users.massDestroy');
    Route::resource('users', 'UsersController');

    // Slider
    Route::delete('sliders/destroy', 'SliderController@massDestroy')->name('sliders.massDestroy');
    Route::post('sliders/media', 'SliderController@storeMedia')->name('sliders.storeMedia');
    Route::post('sliders/ckmedia', 'SliderController@storeCKEditorImages')->name('sliders.storeCKEditorImages');
    Route::resource('sliders', 'SliderController');

    // Newsroom
    Route::delete('newsrooms/destroy', 'NewsroomController@massDestroy')->name('newsrooms.massDestroy');
    Route::post('newsrooms/media', 'NewsroomController@storeMedia')->name('newsrooms.storeMedia');
    Route::post('newsrooms/ckmedia', 'NewsroomController@storeCKEditorImages')->name('newsrooms.storeCKEditorImages');
    Route::resource('newsrooms', 'NewsroomController');

    // Contacts
    Route::delete('contacts/destroy', 'ContactsController@massDestroy')->name('contacts.massDestroy');
    Route::resource('contacts', 'ContactsController', ['except' => ['create', 'store', 'edit', 'update']]);

    // Resources
    Route::delete('resources/destroy', 'ResourcesController@massDestroy')->name('resources.massDestroy');
    Route::post('resources/media', 'ResourcesController@storeMedia')->name('resources.storeMedia');
    Route::post('resources/ckmedia', 'ResourcesController@storeCKEditorImages')->name('resources.storeCKEditorImages');
    Route::resource('resources', 'ResourcesController', ['except' => ['show']]);

    // Countries
    Route::delete('countries/destroy', 'CountriesController@massDestroy')->name('countries.massDestroy');
    Route::resource('countries', 'CountriesController');

    // Category
    Route::delete('categories/destroy', 'CategoryController@massDestroy')->name('categories.massDestroy');
    Route::post('categories/media', 'CategoryController@storeMedia')->name('categories.storeMedia');
    Route::post('categories/ckmedia', 'CategoryController@storeCKEditorImages')->name('categories.storeCKEditorImages');
    Route::resource('categories', 'CategoryController', ['except' => ['edit', 'update', 'show']]);

    // Division
    Route::delete('divisions/destroy', 'DivisionController@massDestroy')->name('divisions.massDestroy');
    Route::post('divisions/media', 'DivisionController@storeMedia')->name('divisions.storeMedia');
    Route::post('divisions/ckmedia', 'DivisionController@storeCKEditorImages')->name('divisions.storeCKEditorImages');
    Route::resource('divisions', 'DivisionController');

    // Contact Information
    Route::delete('contact-informations/destroy', 'ContactInformationController@massDestroy')->name('contact-informations.massDestroy');
    Route::resource('contact-informations', 'ContactInformationController');

    // Searches
    Route::delete('searches/destroy', 'SearchesController@massDestroy')->name('searches.massDestroy');
    Route::resource('searches', 'SearchesController', ['except' => ['create', 'store', 'edit', 'update', 'show']]);

    // Social Responsibility
    Route::delete('social-responsibilities/destroy', 'SocialResponsibilityController@massDestroy')->name('social-responsibilities.massDestroy');
    Route::post('social-responsibilities/media', 'SocialResponsibilityController@storeMedia')->name('social-responsibilities.storeMedia');
    Route::post('social-responsibilities/ckmedia', 'SocialResponsibilityController@storeCKEditorImages')->name('social-responsibilities.storeCKEditorImages');
    Route::resource('social-responsibilities', 'SocialResponsibilityController');
});
Route::group(['prefix' => 'profile', 'as' => 'profile.', 'namespace' => 'Auth', 'middleware' => ['auth']], function () {
    // Change password
    if (file_exists(app_path('Http/Controllers/Auth/ChangePasswordController.php'))) {
        Route::get('password', 'ChangePasswordController@edit')->name('password.edit');
        Route::post('password', 'ChangePasswordController@update')->name('password.update');
        Route::post('profile', 'ChangePasswordController@updateProfile')->name('password.updateProfile');
        Route::post('profile/destroy', 'ChangePasswordController@destroy')->name('password.destroyProfile');
    }
});
