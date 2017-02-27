<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class Service extends Controller
{
	/*SELECT users.first_name as Surnames , users.email as emails, users.documment_id as "ID Documments", countries.name as 'Country Name', departments.name as "Candidate's Department", committes.name as "Candidate's committe", votes.created_at as "Date of Vote" from votes INNER JOIN users on votes.user_dui = users.documment_id INNER JOIN departments on votes.department_id = departments.id INNER JOIN countries on departments.country_id = countries.id INNER JOIN candidates on votes.candidate_id = candidates.id INNER JOIN committes on candidates.committe_id = committes.id ORDER BY users.id ASC*/
	public function service(){
		return json_decode(
			DB::table('votes')
				->join('users', 'votes.user_dui', '=', 'users.documment_id')
				->join('departments', 'votes.department_id', '=', 'departments.id')
				->join('countries', 'departments.country_id', '=', 'countries.id')
				->join('candidates', 'votes.candidate_id', '=', 'candidates.id')
				->join('committes', 'candidates.committe_id', '=', 'committes.id')
					->select('users.first_name as surname', 'users.email as email', 'users.documment_id as idDocumment', 'countries.name as countryName', 'departments.name as candidateDepartment', 'committes.name as candidateCommitte', 'votes.created_at as dateOfVote')
					->orderBy('users.id', 'desc')
				->get());
	}
    
}
