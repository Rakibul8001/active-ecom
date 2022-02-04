<?php

namespace App\Http\Controllers;

use App\Models\Otp;
use App\Models\Setting;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function CreateOtp(Request $request){

        $mobile= $request->input('mobile');
        $settings=Setting::all('ssl_wireless_sms_api_token', 'ssl_wireless_sms_sid', 'ssl_wireless_sms_domain');

        $six_digit_random_number = mt_rand(100000, 999999);
        $message = "প্রিয় গ্রাহক আপনার ৬ সংখ্যার ভেরিফিকেশন পিন ". $six_digit_random_number;

        // send sms through smsinbd
        $post_url = "https://api.smsinbd.com/sms-api/sendsms" ;  
      
        $post_values = array( 
        'api_token' => $settings[0]['ssl_wireless_sms_api_token'],
        'senderid' => $settings[0]['ssl_wireless_sms_sid'],
        'contact_number' => $mobile,
        'message' => $message,
        );

        //return $post_values;
        
        $post_string = "";
        foreach( $post_values as $key => $value )
            { $post_string .= "$key=" . urlencode( $value ) . "&"; }
        $post_string = rtrim( $post_string, "& " );

        $request = curl_init($post_url);
        curl_setopt($request, CURLOPT_HEADER, 0);
        curl_setopt($request, CURLOPT_RETURNTRANSFER, 1);  
        curl_setopt($request, CURLOPT_POSTFIELDS, $post_string); 
        curl_setopt($request, CURLOPT_SSL_VERIFYPEER, FALSE);  
        $post_response = curl_exec($request);  
       curl_close ($request);  
                
        $array =  json_decode( preg_replace('/[\x00-\x1F\x80-\xFF]/', '', $post_response), true );   
        
        if($array){


            $created_timestamp=time();
            $created_time= date("h:i:sa");
            $created_date= date("d-m-Y");
            $result= Otp::insert([
                'mobile'=>$mobile,
                'otp'=>$six_digit_random_number,
                'created_timestamp'=>$created_timestamp,
                'created_date'=>$created_date,
                'created_time'=>$created_time,
            ]);

            return response()->json([
                'status'=>200, 
                'data'=>$result
            ]);
        }
        else{
            return 0;
        }
    }

    //otp verification
    public function otp_verification(Request $request)
    {
        $otp = $request->input('otp');
        $mobile=$request->input('mobile');

        $otpCount = Otp::where('otp',$otp)->where('mobile',$mobile)->count();

        if($otpCount > 0){
            return 1;
        }
        else{
            return 0;
        }
    }


}
