@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content')

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    
 $(document).on('click','#add_news',function(){
        var form = $('#news').serialize();
        var url = $('#news').attr('action');
        $.ajax({
        url:url,
        dataType:'json',
        data:form,
        type:'post',
        beforeSend: function()
        {
         $('.alert_error h1').empty(); 
         $('.alert_error ul').empty(); 
        },success: function(data)
        {
            if(data.status == true)
                {
                    $('.list_news tbody').append(data.result);
                    $('#news')[0].reset();
                }
        },error: function(data_error,exception)
        {
            if(exception == 'error')
                {
                    $('.alert_error h1').html(data_error.responseJSON.message);
                    var error_list = '';
                    $.each(data_error.responseJSON.errors,function(index,v)
                    {
                        error_list += '<li>'+v+'</li>';
                    });
                    $('.alert_error ul').html(error_list);
                }
        }
        });
        return false;
    });
    </script>

<div class="box">
  <div class="box-header with-border">
    <h3 class="box-title">Users</h3>
    <div class="box-tools pull-right">
      <!-- Buttons, labels, and many other things can be placed here! -->
        <a class="btn btn-primary" href="{{route('users.create')}}">Add User</a>
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
            <td>Email</td>
            <td>Action</td>
        </tr>
    </thead>
    @if(count($users) > 0)
    @foreach($users as $user)
    <tr>
        <td>{{$user->id}}</td>
        <td>{{$user->name}}</td>
        <td>{{$user->email}}</td>
        <td>
            <form method="post" action="{{url('del/users/'.$user->id)}}">
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
