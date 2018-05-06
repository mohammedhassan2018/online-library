<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Comment;
use App\Book;
use App\Category;

class PagesController extends Controller
{
    public function index()
    {
        $books = Book::latest()->paginate(5);
        return view('Welcome')->with('books',$books);
    }
    
    public function viewCategory($id)
    {
        $category = Category::find($id);
        $books = $category->books;
        return view('viewcategory')->with(['books'=>$books,'category'=>$category]);
    }
    
    public function viewBook($id)
    {
        $book = Book::findorFail($id);
        return view('book')->with('book',$book);
    }
    
    public function addComment(Request $request, $id)
    {
        $this->validate($request,
         [
            'comment'=>'required|max:200'           
         ]);
        
        $book = Book::findorFail($id);
        $comment = new Comment();
        $comment->user_id = auth()->user()->id;
        $comment->book_id = $book->id;
        $comment->comment = $request->input('comment');
        $comment->save();
        return redirect()->back();
    }
}
