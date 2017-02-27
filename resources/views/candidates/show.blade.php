

@foreach(DB::table('candidates')->where('committe_id', '=', $committe_id)->get() as $candidates)
	@if(DB::table('votes')->select(DB::raw('count(*)'))->where([
                    ['votes.candidate_id', '=', $candidates->id],
                    ['votes.department_id', '=', $department_id],
                    ['votes.user_dui', "=", Sentinel::getUser()->documment_id]
                	])->count() > 0)
		<li class="list-group-item">
		<b> {{ $candidates->name }} </b> <a class="pull-right voting data" value="{{ $candidates->id}}" style="pointer-events: none;" data-committe-id="{{ $committes->committe_id}}" data-department-id="{{ $department_id}}"> <i class="fa fa-thumbs-up" aria-hidden="true" style=""></i>
		</a>
		</li>
	@else
		<li class="list-group-item">
		<b> {{ $candidates->name }} </b> <a class="pull-right voting data" value="{{ $candidates->id}}" style="cursor: pointer; cursor: hand;" data-committe-id="{{ $committes->committe_id}}" data-department-id="{{ $department_id}}"> <i class="fa fa-thumbs-o-up" aria-hidden="true" style=""></i>
		</a>
		</li>
	@endif
	
@endforeach




