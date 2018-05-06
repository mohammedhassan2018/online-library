<div class="panel panel-default">
    <div class="panel-heading text-center">Comments</div>
        <div class="panel-body">
            @include('partial.alerts')
          <form action="{{route('comment',$book->id)}}" method="post">
              {{csrf_field()}}
              <div class="form-group">
                  <textarea class="form-control" name="comment" placeholder="Enter your comment here"></textarea>
              </div>
              <div class="form-group">
                  <button button="submit" name="addcomment" class="btn btn-primary">Add comment</button>
              </div>
          </form>
            <hr>
            @if (count($book->comments) >0)
            @foreach($book->comments as $comment)
            <div class="row" style="padding-left:20px;">
                <h4>{{$comment->user->name}}</h4> <span class="text-muted">{{$comment->created_at}}</span>
                <p>{{$comment->comment}}</p>
                <hr>
            </div>
            @endforeach
            @endif
        </div>
</div>