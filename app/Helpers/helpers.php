<?php

use App\Models\Dashboard;
use App\Models\User;

use Illuminate\Support\Facades\DB;
// get login details
if (!function_exists('getlogindetail')) {
    function getlogindetail($string)
    {
        $sess = session('session_admin');
        
        // if($string == 'role') {
        //     return "Manager";
        // }
        
        // if($string == 'id') {
        //     return "2";
        // }
        
        return $sess[$string] ?? '';
    }
}
if(!function_exists('getall')){
    function getcustomdetails($table){
        Dashboard::getall($table);

    }
}

// get team id 
if(!function_exists('getteamId')){
        function getteamId ($userid){
         return  DB::table('users')->where('id',$userid)->first(['team_id','id']);

        }
}



if (!function_exists('getsidebarmodules')) {
    function getsidebarmodules()
    {
        $det = Dashboard::getsidebardetails();
        $mainarr = array();

        if (!empty($det)) {
            foreach ($det as $value) {
                array_push($mainarr, array('sidebar_id' => $value['sidebar_id'], 'sidebar_name' => $value['sidebar_name']));
            }
        }

        return $mainarr;
    }
}



// get vendor details
if (!function_exists('getvendordetail')) {
    function getvendordetail($string)
    {
        $result = Dashboard::getvendordetail($string, getlogindetail('id'));
        return $result->$string ?? '';
    }
}


if (!function_exists('getwebdetail')) {
    function  getwebdetail($string)
    {
        $result = Dashboard::getwebdetail($string);

        return $result->$string ?? '';
    }
}



if (!function_exists('sendmsg')) {
    function sendmsg($code, $msg)
    {
        return response()->json(['message' => $msg, 'code' => $code,], '200', ['Content-Type' => 'application/json;'], JSON_UNESCAPED_UNICODE);
    }
}



if(!function_exists('getUserSession')){
    function getUserSession($string){
        $sess = session('userSession');
        return $sess[$string]??'';

    }
}
if(!function_exists('selectedOption')){
    function selectedOption($string,$option){
        return  ($string == $option) ? 'selected' : '';

    }
}

if(!function_exists('getuserinfo')){
    function getuserinfo($string){
        if(getUserSession($string) !=''){
            $email = getUserSession($string);
            $id=  User::where('email',$email)->get();
            return $id[0]['id'];
        }else{
            return  '';
        }

    }
}


if (!function_exists('comman')) {
    function  comman($table,$product_id)
    {
        return   DB::table($table)->where('process_id',$product_id)->get();

    }
}

if (!function_exists('getFeilds')) {
    function  getFeilds($table,$column,$value)
    {
        return   DB::table($table)->where($column,$value)->get();

    }
}

if (!function_exists('particularCount')) {
    function  particularCount($table,$where,$id)
    {
        return   DB::table($table)->where($where,$id)->count();

    }
}

if(!function_exists('ip')){
    function ip(){
        if(gethostbyaddr($_SERVER['REMOTE_ADDR']) =='160.202.38.128'){
            dd('Not Accessable');

        }


    }
       
}
if(!function_exists('fmvamount')){
    function fmvamount($tpamount,$percenrtage){
        $total = $tpamount+ ($tpamount*$percenrtage)/100;
        return $total;
        

    }
       
}
