<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SiteInfoController;
use App\Http\Controllers\ContactListController;
use App\Http\Controllers\VisitorListController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\ProductDetailController;
use App\Http\Controllers\CategoryDetailsController;



Route::get('/SendVisitorDetails',[VisitorListController::class,'SendVisitorDetails']);
Route::post('/SendContactDetails',[ContactListController::class,'SendContactDetails']);
Route::get('/SendSiteInfo',[SiteInfoController::class,'SendSiteInfo']);
Route::get('/SendCategoryDetails',[CategoryDetailsController::class,'SendCategoryDetails']);

Route::get('/productListByRemark/{remark}',[ProductController::class,'productListByRemark']);
Route::get('/productListBySubcategory/{Category}/{Subcategory}',[ProductController::class,'productListBySubcategory']);
Route::get('/productListByCategory/{Category}',[ProductController::class,'productListByCategory']);

Route::get('/ProductDetails/{code}',[ProductDetailController::class,'ProductDetails']);

Route::get('/SendSliderInfo',[SliderController::class,'SendSliderInfo']);
Route::get('/NotificationHistory',[NotificationController::class,'NotificationHistory']);
//product search
Route::get('/productListBySearch/{key}',[ProductController::class,'ProductBySearch']);
