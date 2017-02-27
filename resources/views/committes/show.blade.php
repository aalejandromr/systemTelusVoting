@extends('layouts.app')

@section('content')
	<div hidden="true" id="user_documment" value="{{Sentinel::getUser()->documment_id }}"> {{Sentinel::getUser()->documment_id }} </div>
	
	@foreach($committes_to_show as $committes)
		<a href="#">
		<div class="col-md-3">
			<div class="box box-primary" >
	            <div class="box-body box-profile">

	              <h3 class="profile-username text-center">{{$committes->name}}</h3>

	              <ul class="list-group list-group-unbordered">
	                
	                @include("candidates.show", ['committe_id' => $committes->id])

	              </ul>
	            </div>
	            <!-- /.box-body -->
	         </div>
	    </div>
	    </a>
	@endforeach
@endsection

@section('custom-scripts')
<script type="text/javascript">
	$("button").click(function(){
		console.log(this);
	});

	$("a").click(function(){
		if($(this).hasClass('voting')){
			console.log($(this).data());
			$.ajaxSetup({
			    headers: {
			        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			    }
			});
			$.post("/vote", { candidate: $(this)[0]['attributes'][1].value, documment_id: parseInt($("#user_documment").text()), committe_id: $(this).data().committeId, department_id: $(this).data().departmentId}).done(function(data){
					if(data == 1){
						alert("You've already voted for this committee, if you want keep voting select another committee's candidate.");
					}
					else{
							alert(data);
							window.location.href = "/";
					}
			}).fail(function() {
		    	alert("You must voted already, if not, refresh this page and try again.");
		  	});
		}
	});
</script>
@endsection