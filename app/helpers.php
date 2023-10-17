<?php

use Illuminate\Support\Facades\DB;

function NewUserId(){
    $notifications = DB::table('notifications')->get();

return  $notifications;
}
