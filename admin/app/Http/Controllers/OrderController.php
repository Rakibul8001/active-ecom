<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    function CartOrder(Request $request){
        $city=  $request->input('city');
        $paymentMethod=  $request->input('paymentMethod');
        $yourName=  $request->input('yourName');
        $deliveryAddress=  $request->input('deliveryAddress');
        $mobileNumber=  $request->input('mobileNumber');
        $invoice_no= $request->input('invoice_no');
        $ShippingPrice= $request->input('ShippingPrice');

        date_default_timezone_set("Asia/Dhaka");
        $request_time= date("h:i:sa");
        $request_date= date("d-m-Y");

        $CartList=Cart::where('mobile',$mobileNumber)->get();
        $cartInsertDeleteResult="";
        foreach($CartList as $CartListItem) {
            $resultInsert=  Order::insert([
                'invoice_no'=>"C".$invoice_no,
                'product_name'=>$CartListItem['product_name'],
                'product_code'=>$CartListItem['product_code'],
                'shop_name'=> $CartListItem['shop_name'],
                'shop_code'=>$CartListItem['shop_code'],
                'product_info'=>$CartListItem['product_info'],
                'product_quantity'=>$CartListItem['quantity'],
                'unit_price'=>$CartListItem['unit_price'],
                'total_price'=> $CartListItem['total_price'],
                'mobile'=> $CartListItem['mobile'],
                'name'=>$yourName,
                'payment_method'=>$paymentMethod,
                'delivery_address'=>$deliveryAddress,
                'city'=>$city,
                'delivery_charge'=>$ShippingPrice,
                'order_date'=>$request_date,
                'order_time'=>$request_time,
                'order_status'=>"Pending",
            ]);

            if($resultInsert==1){
                $resultDelete= Cart::where('id',$CartListItem['id'])->delete();
                if($resultDelete==1){
                    $cartInsertDeleteResult=1;
                }
                else{
                    $cartInsertDeleteResult=0;
                }

            }
        }
        return $cartInsertDeleteResult;
    }

    public function OrderByUser(Request $request){
        $mobile = $request->mobile;
        $result = Order::where('mobile',$mobile)->orderBy('id','desc')->get();

        return $result;
    }
}
