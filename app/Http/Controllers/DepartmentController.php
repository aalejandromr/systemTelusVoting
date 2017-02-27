<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use View; 

class DepartmentController extends Controller
{
    public function showCommittes($department_id){
    	/*SELECT committe_departments.committe_id, committe_departments.department_id, committes.name FROM `committe_departments` INNER JOIN committes on committe_departments.committe_id = committes.id*/
    	$committes_to_show = DB::table('committe_departments')
                                ->join("committes", "committe_departments.committe_id", "=", "committes.id")
                                    ->where('department_id', '=', $department_id)
                                ->get();
    	/*return Response()->json([
            'committes' => $committes_to_show,
            'candidates' => $committe_candidates
        ]);*/


    	//return view('committes.show');

    	return View::make('committes.show')
                ->with(compact('committes_to_show'))
                ->with(compact('committe_candidates'))
                ->with(compact('department_id'))
                ->with(compact('department_id'));
    }

}
