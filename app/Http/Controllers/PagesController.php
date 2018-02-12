<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index(){
        //return 'INDEX';
        $title = 'Welcome to Laravel';
        //return view('pages.index', compact('title'));
        return view('pages.index')->with('title', $title);
    }

    public function about(){
        //return 'INDEX';
        $title = 'About Us';
        return view('pages.about')->with('title', $title);
    }

    public function services(){
        //return 'INDEX';
        //data is an associative array = key value pairs
        $data = array(
            'title' => 'Services',
            'services' => ['Web Design', 'Programming', 'SEO']
        );
        return view('pages.services')->with($data);
    }
}
