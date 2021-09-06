<?php

namespace App\Http\Controllers;

use App\Models\Course;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home (){
        $courses = Course::with('user')->paginate(8);
        //dd($posts);
        return view('index', compact('courses'));
    }

    public function show(Course $course){
        return view('courses.show', compact('course'));
        //dd($post);
    }
}
