<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function productListByRemark(Request $request)
    {
        $remark = $request->remark;
        $product_list = Product::where('remark',$remark)->get();

        return $product_list;
    }

    public function productListBySubcategory(Request $request)
    {
        $Category = $request->Category;
        $Subcategory = $request->Subcategory;
        $product_list = Product::where('category',$Category)->where('subcategory',$Subcategory)->get();
        
        return $product_list;
    }
    public function productListByCategory(Request $request)
    {
        $Category = $request->Category;
        $product_list = Product::where('category',$Category)->get();
        
        return $product_list;
    }

    //Product search
    public function ProductBySearch(Request $request){
        $key = $request->key;
        $productList = Product::where('title','LIKE',"%{$key}%")->get();

        return $productList;
    }

    //Similar Products
    public function SimilarProducts(Request $request){
        $products = Product::where('subcategory',$request->subcategory)->limit(12)->get();
        return $products;
    }
}
