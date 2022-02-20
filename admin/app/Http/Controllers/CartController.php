<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;

class CartController extends Controller
{
    function AddToCart(Request $request){
        $color=$request->input('color');
        $size=$request->input('size');
        $quantity=$request->input('quantity');
        $mobileNo=$request->input('mobile');
        $product_code=$request->input('product_code');

        $ProductDetails= Product::where('product_code',$product_code)->get();
        $price=$ProductDetails[0]['price'];
        $special_price=$ProductDetails[0]['special_price'];
        if($special_price=="NA"){
            $total_price=$price*$quantity;
            $unit_price=$price;
        }
        else{
            $total_price=$special_price*$quantity;
            $unit_price= $special_price;
        }
        $result=Cart::insert([
            'img'=>$ProductDetails[0]['image'],
            'product_name'=>$ProductDetails[0]['title'],
            'product_code'=>$product_code,
            'shop_name'=>$ProductDetails[0]['shop_name'],
            'shop_code'=>$ProductDetails[0]['shop_code'],
            'product_info'=>$color."-".$size,
            'quantity'=>$quantity,
            'unit_price'=>$unit_price,
            'total_price'=>$total_price,
            'mobile'=>$mobileNo
        ]);

        return $result;
    }

    public function CartCount(Request $request){
        $mobile = $request->mobile;
        $result = Cart::where('mobile',$mobile)->count();
        return $result;
    }

    public function CartList(Request $request){
        $result = Cart::where('mobile',$request->mobile)->get();

        return $result;
    }

    public function removeCartItem($id){
        $result = Cart::findOrFail($id)->delete();

        return $result;
    }

}
