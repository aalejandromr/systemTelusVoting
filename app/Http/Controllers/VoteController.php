<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Sentinel;
class VoteController extends Controller
{

    public function voting(Request $request){
        if(Sentinel::check()){
            try {
            /*SELECT COUNT(*) from votes where `committe_id` = 3 AND `user_dui` = 1720*/
            if(DB::table('votes')->select(DB::raw('count(*)'))
                    ->where([
                            ['committe_id', '=', $request->committe_id],
                            ['user_dui', '=', $request->documment_id],
                            ['department_id', "=", $request->department_id]
                        ])->count() > 0){
                    return 1;
                }
                else
                {   
                    DB::table('votes')
                        ->insert(
                            [
                                'user_dui' => $request->documment_id,
                                'candidate_id' => $request->candidate,
                                'committe_id' => $request->committe_id,
                                'department_id' => $request->department_id
                            ]
                    );
                    return "Thanks for voting, visit our graphics later.";
                }
                
                //return "Thanks for voting";
            } catch (Exception $e) {
                return "You've already has voted, and you can only vote per committe per country's department";
            }
        }
        else {
            return view('auth.login');  
        }
    }

    public function graphics_find($id)
    {
        if(Sentinel::check()){
            $great_query = DB::table("votes")
                            ->join("departments", "votes.department_id", "=", "departments.id")
                            ->join("countries", "departments.country_id", "=", "countries.id")
                            ->select(DB::raw('count(*) as Votos, departments.name'))
                            ->where('countries.id', '=', 1)
                            ->groupBy('votes.department_id')
                            ->get();
            return view("votes.graphic",["data" => $great_query]);
        }
        else {
            return view('auth.login');  
        }
    }

    public function make_graphic($country_id){
        if(Sentinel::check()){
            $great_query = json_decode(DB::table("votes")
                                    ->join("departments", "votes.department_id", "=", "departments.id")
                                    ->join("countries", "departments.country_id", "=", "countries.id")
                                    ->select(DB::raw('departments.name, count(*) as y'))
                                    ->where('countries.id', '=', $country_id)
                                    ->groupBy('votes.department_id')->get());
        return $great_query;
        }
        else {
            return view('auth.login');  
        }
    }

    public function get_visitors(){
        $today_visitor = DB::select("select count(ip_address) as today_visitors FROM `visitors` WHERE
                                        DATE(created_at) = DATE(now()) ORDER BY DATE(created_at)");
        return $today_visitor;
    }
}
