<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    public function SendSliderInfo(){
        $result = Slider::all();

        return $result;
    }
}
