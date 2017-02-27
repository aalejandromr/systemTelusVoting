@extends('layouts.app')

@section('content')
	@foreach($departments as $departments)
	<a href="/department/{{ $departments->id }}">
	<div class="col-md-3">
		<div class="box box-primary" >
            <div class="box-body box-profile">

              <h3 class="profile-username text-center">{{ $departments->name }}</h3>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Committes</b> <a class="pull-right"> </a>
                </li>
                <li class="list-group-item">
                  <b>Votes</b> <a class="pull-right"> </a>
                </li>
              </ul>
            </div>
            <!-- /.box-body -->
         </div>
    </div>
    </a>

          <!-- /.box -->
	@endforeach


@endsection