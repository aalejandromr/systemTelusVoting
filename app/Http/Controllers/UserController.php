<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Sentinel;
class UserController extends Controller
{
    public function getCountry(){
    	//select countries.name FROM `users` INNER JOIN countries on users.country_id = countries.id where users.id = 5
    	$countryName = DB::table('users')
    	                            ->join('countries', 'users.country_id', '=', 'countries.id')
    	                            ->select('countries.name as name')
    	                            ->where('users.id', '=', Sentinel::getUser()->id)
    	                            ->get();
        return $countryName;
    }

}
