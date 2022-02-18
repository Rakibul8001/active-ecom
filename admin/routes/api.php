<?php

use App\Models\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CartController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SiteInfoController;
use App\Http\Controllers\ContactListController;
use App\Http\Controllers\VisitorListController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\ProductDetailController;
use App\Http\Controllers\CategoryDetailsController;
use App\Http\Controllers\FavouriteController;

Route::get('/SendVisitorDetails',[VisitorListController::class,'SendVisitorDetails']);
Route::post('/SendContactDetails',[ContactListController::class,'SendContactDetails']);
Route::get('/SendSiteInfo',[SiteInfoController::class,'SendSiteInfo']);
Route::get('/SendCategoryDetails',[CategoryDetailsController::class,'SendCategoryDetails']);

Route::get('/productListByRemark/{remark}',[ProductController::class,'productListByRemark']);
Route::get('/productListBySubcategory/{Category}/{Subcategory}',[ProductController::class,'productListBySubcategory']);
Route::get('/productListByCategory/{Category}',[ProductController::class,'productListByCategory']);
Route::get('/similarProducts/{subcategory}',[ProductController::class,'SimilarProducts']);

Route::get('/ProductDetails/{code}',[ProductDetailController::class,'ProductDetails']);

Route::get('/SendSliderInfo',[SliderController::class,'SendSliderInfo']);
Route::get('/NotificationHistory',[NotificationController::class,'NotificationHistory']);
//product search
Route::get('/productListBySearch/{key}',[ProductController::class,'ProductBySearch']);
//send otp when login
Route::post('/CreateOtp',[LoginController::class,'CreateOtp']);
Route::post('/otp-verification',[LoginController::class,'otp_verification']);
//Reviewlist
Route::get('/review-list/{code}',[ReviewController::class,'ReviewList']);
//addToCart
Route::post('/addToCart',[CartController::class,'AddToCart']);
Route::get('/cartcount/{mobile}',[CartController::class,'CartCount']);
//Add To Favourite List
Route::get('add-to-favourite/{code}/{mobile}',[FavouriteController::class,'AddToFav']);
Route::get('favourite-list/{mobile}',[FavouriteController::class,'FavList']);

