@extends('adminlte::page')

@section('title', 'Add Category')

@section('content')

<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Edit Category</h3>
    <div class="box-tools pull-right">
      <!-- Buttons, labels, and many other things can be placed here! -->
        <a class="btn btn-primary" href="{{route('categories.index')}}">View all categories</a>
    </div>
  </div>

  <div class="box-body">
      <form action="{{route('users.update')}}" method="post">
          {{csrf_field()}}
          <div class="form-group">
              <input type="text" name="name" id="name" class="form-control" placeholder="Enter User Name">
          </div>
          <div class="form-group">
              <button type="submit" name="update" class="btn btn-primary">Update category</button>
          </div>
      </form>
  </div>
</div>

@stop
