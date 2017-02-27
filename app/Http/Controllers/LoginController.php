<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Sentinel;
use Cartalyst\Sentinel\Checkpoints\ThrottlingException;
use Illuminate\Support\Facades\DB;
use View;
use DateTimeZone;
use DateTime;
class LoginController extends Controller
{
    public function login(){
    	if(Sentinel::check()){
            $departments = DB::table('departments')
                            ->where('country_id', '=', Sentinel::getUser()->country_id)
                            ->get();
            //$departments = Sentinel::getUser()->country_id;
            $address_ip = $_SERVER['REMOTE_ADDR'];
            $UTC = new DateTimeZone("UTC");
            $newTZ = new DateTimeZone("America/El_Salvador");
            $date = date('Y-m-d');
            $UTCDate = new DateTime($date, $UTC);
            $UTCDate->setTimeZone($newTZ);
            $is_in = DB::select("select count(ip_address) as counted FROM `visitors` where DATE(created_at) = ? and ip_address = ?", [$UTCDate->format('Y-m-d'), $address_ip]);
            if($is_in[0]->counted == 0){
                DB::table('visitors')->insert(
                    ["ip_address" => $address_ip],
                    ["created_at" => $UTCDate->format('Y-m-d')]
                    );
            }
            else {

            }
            $today_visitor = DB::select("select count(ip_address) as today_visitors FROM `visitors` WHERE
                                        DATE(created_at) = DATE(now()) ORDER BY DATE(created_at)");
            $txt = json_encode(DB::select('select DATE(visitors.created_at) AS the_date, COUNT(*) AS count 
                                            FROM visitors WHERE visitors.created_at BETWEEN DATE("2016-11-28") 
                                            AND DATE("2019-12-05") GROUP BY the_date'));
            $myfile = file_put_contents( public_path() . '/visitors.txt', $txt.PHP_EOL);
            return View::make('votes.dashboard')
                        ->with(compact('departments'))
                        ->with(compact('today_visitor'));
    	}
    	else {
    		return view('auth.login');	
    	}
    }

    public function logNow(Request $request) {
    	
    	try {
    		if(Sentinel::authenticate($request->all())){
            //$departments = DB::table('departments')->get();
            $departments = DB::table('departments')
                            ->where('country_id', '=', Sentinel::getUser()->country_id)
                            ->get();
            $today_visitor = DB::select("select count(ip_address) as today_visitors FROM `visitors` WHERE DATE(created_at) = DATE(now()) ORDER BY DATE(created_at)");
            //$departments = Sentinel::getUser()->country_id;
            return View::make('votes.dashboard')
                            ->with(compact('departments'))
                            ->with(compact('today_visitor'));
	    	}
	    	else {
	    		return redirect()
                        ->back()
                        ->with(['error' => 'Your email or password are not in our system']);
	    	}
    	} catch (ThrottlingException $e) {
    		$delay = $e->getDelay();
    		return redirect()
                ->back()->with(['error' => 'You must wait for ' . $delay. ' seconds. ']);
    	}
    	
    }

    public function logout(){
     Sentinel::logout();
     return redirect('/');
    }
}
