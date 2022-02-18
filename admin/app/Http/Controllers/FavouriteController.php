<?php

namespace App\Http\Controllers;

use App\Models\Favourite;
use App\Models\Product;
use Illuminate\Http\Request;

class FavouriteController extends Controller
{
    public function AddToFav(Request $request){
        $code = $request->code;
        $mobile = $request->mobile;
        $product = Product::where('product_code',$code)->first();
        $title = $product->title;
        $img = $product->image;

        $result = Favourite::insert([
            'title'=>$title,
            'img'=>$img,
            'product_code'=>$code,
            'mobile'=>$mobile
        ]);

        return $result;
    }

    public function FavList(Request $request)
    {
        $mobile = $request->mobile;
        $result = Favourite::where('mobile',$mobile)->get();
        
        return $result;
    }
}
