<?php

use App\Models\User;
use App\Models\UserLoginNotification;

function Notification(){
    $UserIds=UserLoginNotification::all('data');

    return $UserIds;

 }
