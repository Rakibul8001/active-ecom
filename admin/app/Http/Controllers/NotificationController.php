<?php

namespace App\Http\Controllers;

use App\Models\Notification;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    public function NotificationHistory(){
        $notifications = Notification::orderBy('id','desc')->take(100)->get();

        return $notifications;
    }
}
