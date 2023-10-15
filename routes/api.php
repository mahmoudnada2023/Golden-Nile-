<?php

use App\Http\Controllers\API\AboutUsController;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\ContactUsAPIController;
use App\Http\Controllers\API\CouponController;
use App\Http\Controllers\API\FaciliteController;
use App\Http\Controllers\API\GalleryController;
use App\Http\Controllers\API\PageController;
use App\Http\Controllers\API\SettingController;
use App\Http\Controllers\API\SideSeeingController;
use App\Http\Controllers\API\SliderController;
use App\Http\Controllers\API\SocialController;
use App\Http\Controllers\API\SubscriberController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('signup',[AuthController::class,'SignUp']);
Route::post('verify',[AuthController::class,'verify']);
Route::post('login', [AuthController::class, 'Login']);
Route::post('forget-password', [AuthController::class, 'ForgetPassword']);
Route::post('confirm-code', [AuthController::class, 'ConfrimCode']);
Route::get('about-us',[AboutUsController::class,'aboutus']);
Route::get('socials', [SocialController::class, 'socials']);
Route::get('coupones', [CouponController::class, 'coupones']);
Route::get('sliders', [SliderController::class, 'sliders']);
Route::get('settings', [SettingController::class, 'settings']);
Route::get('galleries', [GalleryController::class, 'galleries']);
// Route::get('pages', [PageController::class, 'pages']);
Route::get('facilites', [FaciliteController::class, 'facilites']);
Route::get('sideseeings', [SideSeeingController::class, 'sideSeeings']);
Route::post('contactus', [ContactUsAPIController::class,'store']);
Route::post('subscribe',[SubscriberController::class,'subscribe']);
Route::middleware(['auth:user','StatusMiddleware'])->group(function(){
    Route::get('profile', [AuthController::class, 'Profile']);
    Route::post('update-profile', [AuthController::class, 'UpdateProfile']);
    Route::get('logout', [AuthController::class, 'Logout']);
    Route::post('change-password', [AuthController::class, 'ChangePassword']);
});
