<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function productList(Request $request)
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
}
