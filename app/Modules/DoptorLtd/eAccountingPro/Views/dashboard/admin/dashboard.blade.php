@section('title')
	{{ $title }}
@stop



@section('styles')
	@include("{$module_alias}::includes.admin.styles")
	@parent
	<style>
		
	</style>
@stop


@section('content')

	@include("{$module_alias}::includes.admin.navbar")
	
	<!-- row-starts -->
	<div class="row">
		<h4>testing</h4>
	</div> <!-- row ends -->


	
@stop

@section('scripts')
    @include("{$module_alias}::includes.admin.js")
@stop
