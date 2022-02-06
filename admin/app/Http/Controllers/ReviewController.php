<?php

namespace App\Http\Controllers;

use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function postReview(Request $request){
        $product_code = $request->input('product_code');
        $product_name = $request->input('product_name');
        $mobile = $request->input('mobile');
        $reviewer_photo = $request->input('reviewer_photo');
        $reviewer_name = $request->input('reviewer_name');
        $reviewer_rating = $request->input('reviewer_rating');
        $reviewer_comment = $request->input('reviewer_comment');

        $result = Review::create([
            'product_code'=>$product_code,
            'product_name'=>$product_name,
            'mobile'=>$mobile,
            'reviewer_photo'=>$reviewer_photo,
            'reviewer_name'=>$reviewer_name,
            'reviewer_rating'=>$reviewer_rating,
            'reviewer_comment'=>$reviewer_comment,
        ]);

        return $result;
    }

    public function ReviewList(Request $request){
        $code = $request->code;
        $result = Review::where('product_code',$code)->orderBy('id','desc')->limit(7)->get();

        return $result;
    }
}
