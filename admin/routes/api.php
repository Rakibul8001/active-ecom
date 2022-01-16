<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SiteInfoController;
use App\Http\Controllers\ContactListController;
use App\Http\Controllers\VisitorListController;
use App\Http\Controllers\CategoryDetailsController;



Route::get('/SendVisitorDetails',[VisitorListController::class,'SendVisitorDetails']);
Route::post('/SendContactDetails',[ContactListController::class,'SendContactDetails']);
Route::get('/SendSiteInfo',[SiteInfoController::class,'SendSiteInfo']);
Route::get('/SendCategoryDetails',[CategoryDetailsController::class,'SendCategoryDetails']);

Route::get('/productList/{remark}',[ProductController::class,'productList']);
Route::get('/productListBySubcategory/{Category}/{Subcategory}',[ProductController::class,'productListBySubcategory']);
