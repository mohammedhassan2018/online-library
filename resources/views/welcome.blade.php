@extends('layouts.app')

@section('content')

            <div class="panel panel-default">
                <div class="panel-heading text-center">All Books</div>
                <div class="panel-body">
                    {{$books->links()}}
                    @if (count($books) > 0)
                    @foreach ($books as $book)
                     <div class="row">
                        <div class="col-md-3">
                            <img src="{{asset('storage/thumbnails/'.$book->image)}}" class="img-responsive">
                        </div>
                            <div class="col-md-9 text-center">
                              <h2>{{$book->title}}</h2>
                              <p>{{$book->info}}</p>
                              <hr>
                              Author : {{$book->author}}  
                              <br/>
                              <br/>
                              <a href="{{asset('storage/books/'.$book->bookfile)}}" class="btn btn-primary">Download</a>
                              <a href="{{route('book',$book->id)}}" class="btn btn-info">More info</a>
                             </div>
                     </div>
                     <hr>
                    <br/>
                    @endforeach
                    @endif
                </div>
            </div>

@endsection
