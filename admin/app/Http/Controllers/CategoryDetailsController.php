<?php

namespace App\Http\Controllers;

use App\Models\CategoryLavel1Model;
use App\Models\CategoryLavel2Model;
use Illuminate\Http\Request;

class CategoryDetailsController extends Controller
{
    public function SendCategoryDetails(){
        $parentCategory = CategoryLavel1Model::all();
        $categoryArray = [];

        foreach($parentCategory as $category){
            $SubCategory = CategoryLavel2Model::where('cat1_name',$category['cat1_name'])->get();

            $item = [
                'ParentCategoryName' => $category['cat1_name'],
                'ParentCategoryImg' => $category['cat1_image'],
                'SubCategory'=>$SubCategory
            ];

            array_push($categoryArray,$item);
        }

        return $categoryArray;
    }
}
