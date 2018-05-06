@extends('layouts.app')

@section('content')

            <div class="panel panel-default">
                <div class="panel-heading">Upload file</div>
                <div class="panel-body">
                    @include('partial.alerts')
                    <form action="{{route('upload.save')}}" method="post" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="form-group">
                            <input type="text" name="title" id="title" placeholder="Enter title" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <input type="text" name="author" id="author" placeholder="Enter author" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <select class="form-control" name="category">
                                @if(count($allcategories) > 0)
                                @foreach($allcategories as $category)
                                <option value="{{$category->id}}">{{$category->name}}</option>
                                @endforeach
                                @endif
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="text" name="info" id="info" placeholder="Some info of book" class="form-control"/>
                        </div>
                        <div class="form-group">Upload image:
                            <input type="file" name="image" id="image" class="form-control"/>
                        </div>
                        <div class="form-group">Upload file:
                           <input type="file" name="book" id="book" class="form-control"/> 
                        </div>
                        <div class="form-group">
                            <button type="submit" name="upload" class="btn btn-primary">Upload book</button>
                        </div>
                    </form>
                </div>      
            </div>

@endsection
