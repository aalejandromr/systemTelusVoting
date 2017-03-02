<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Sentinel;

class RegistrationController extends Controller
{
    public function register(){
    	$countries = DB::table('countries')
                    ->get();

    	return view('auth.register', ['countries' => $countries]);
    }

    public function registerNow(Request $request){
        
        if($request->password !== $request->password_confirmation){
            return redirect()
                    ->back()
                    ->with(['error' => 'Your email or password are not in our system']);
        }
        else
        {
            //dd($request);
            $user = Sentinel::registerAndActivate($request->all());
            return redirect('/');
        }
    }

    public function login(Request $request){

    }
}
