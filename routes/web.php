<?php

use App\Http\Controllers\AdminPanel\AboutUsController;
use App\Http\Controllers\AdminPanel\AdminController;
use App\Http\Controllers\AdminPanel\AuthController;
use App\Http\Controllers\AdminPanel\ContactUsController;
use App\Http\Controllers\AdminPanel\CouponController;
use App\Http\Controllers\AdminPanel\PermessionController;
use App\Http\Controllers\AdminPanel\RoleController;
use App\Http\Controllers\AdminPanel\SettingController;
use App\Http\Controllers\AdminPanel\SliderController;
use App\Http\Controllers\AdminPanel\SocialController;
use App\Http\Controllers\AdminPanel\UserController;
use App\Http\Controllers\AdminPanel\GalleryController;
use App\Http\Controllers\AdminPanel\PageController;
use App\Http\Controllers\DownloadFileController;
use App\Http\Controllers\AdminPanel\FaciliteController;
use App\Http\Controllers\AdminPanel\ImageController;
use App\Http\Controllers\AdminPanel\SideSeeingController;
use App\Http\Controllers\AdminPanel\SubscriberController;
use App\Http\Controllers\AdminPanel\NewsletterController;
use App\Http\Controllers\BlogController;
use Illuminate\Support\Facades\Route;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
    ],
    function () {
        Route::middleware(['guest'])->group(function () {
            Route::get('/', [AuthController::class, 'login'])->name('auth.login');
            Route::get('/login', [AuthController::class, 'postLogin'])->name('post.login');
        });

        Route::middleware('auth:web')->group(function () {
            Route::get('/dashboard', function () {
                return view('welcome');
            })->name('dashboard');

            Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
            Route::resource('admins', AdminController::class);
            Route::resource('role', RoleController::class);
            Route::resource('permessions', PermessionController::class);
            Route::resource('aboutus', AboutUsController::class);
            Route::resource('socials', SocialController::class);
            Route::resource('coupons', CouponController::class);
            Route::resource('users', UserController::class);
            Route::post('sendemail', [UserController::class,'sendEmail'])->name('users.sendemail');
            Route::resource('sliders', SliderController::class);
            Route::resource('settings', SettingController::class);
            Route::resource('galleries', GalleryController::class);
            Route::resource('contactus', ContactUsController::class);
            //Route::resource('pages', PageController::class);
            Route::resource('facilites', FaciliteController::class);
            Route::post('image/upload/{folder}',ImageController::class);
            Route::get('facilities/image/delete/{id}', [FaciliteController::class,'deletePhoto']);
            Route::resource('side-seeings', SideSeeingController::class);
            Route::get('sideseeing/image/delete/{id}', [SideSeeingController::class, 'deletePhoto']);
            Route::resource('subscribers', SubscriberController::class);
            Route::resource('newsletters', NewsletterController::class);
            Route::get('/blogs', [BlogController::class,'index']);
            Route::get('/download-pdf/{id}', [DownloadFileController::class,'downloadPdf'])->name('download.pdf');
        });
    }
);

Route::get('generator_builder', '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@builder')->name('io_generator_builder');

Route::get('field_template', '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@fieldTemplate')->name('io_field_template');

Route::get('relation_field_template', '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@relationFieldTemplate')->name('io_relation_field_template');

Route::post('generator_builder/generate', '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@generate')->name('io_generator_builder_generate');

Route::post('generator_builder/rollback', '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@rollback')->name('io_generator_builder_rollback');

Route::post(
    'generator_builder/generate-from-file',
    '\InfyOm\GeneratorBuilder\Controllers\GeneratorBuilderController@generateFromFile'
)->name('io_generator_builder_generate_from_file');
