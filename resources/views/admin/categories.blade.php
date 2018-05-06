@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content')

<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Categories</h3>
    <div class="box-tools pull-right">
      <!-- Buttons, labels, and many other things can be placed here! -->
        <a class="btn btn-primary" href="{{route('categories.create')}}">Add Category</a>
    </div>
    <!-- /.box-tools -->
  </div>
  <!-- /.box-header -->
  <div class="box-body">
    <table class="table table-bordered text-center">
    <thead>
        <tr>
            <td>#</td>
            <td>Name</td>
            <td>Action</td>
        </tr>
    </thead>
    @if(count($categories) > 0)
    @foreach($categories as $category)
    <tr>
        <td>{{$category->id}}</td>
        <td>{{$category->name}}</td>
        <td>
            <form method="post" action="{{url('del/categories/'.$category->id)}}">
                <input type="hidden" name="_token" value="{{csrf_token()}}">
                <input type="hidden" name="_method" value="DELETE">
                <input type="submit" value="Delete" class="btn btn-danger">
            </form>
        </td>
    </tr>
    @endforeach
    @endif
</table>
  </div>
  <!-- /.box-body -->
</div>
<!-- /.box -->
@stop
