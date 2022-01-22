<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductDetail;
use Illuminate\Http\Request;

class ProductDetailController extends Controller
{
    public function ProductDetails(Request $request){
        $product_details = ProductDetail::where('product_code',$request->code)->get();
        $product = Product::where('product_code',$request->code)->get();

        $items = [
            'product_details'=>$product_details,
            'product'=>$product,
        ];

        // dd($items['product_details'][0]['img1']);

        return $items;
    }
}
