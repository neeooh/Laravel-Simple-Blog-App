@extends('layouts.app')

@section('content')
    <h1>Edit post</h1>
    
    {{--  {!! Form::open(['url' => 'foo/bar']) !!}  --}}
    {!! Form::open(['action' => ['PostsController@update', $post->id], 'method' => 'POST', 'enctype' => 'multipart/form-data']) !!}
        <div class="form-group">
            {{Form::label('title', 'Title')}}
            {{Form::text('title', $post->title, ['class' => 'form-control', 'placeholder' => 'Title'])}} <!--second parameter is value-->
        </div>
        <div class="form-group">
            {{Form::label('body', 'Body')}}
            {{Form::textarea('body', $post->body, ['id' => 'article-ckeditor', 'class' => 'form-control', 'placeholder' => 'Body text'])}} <!--second parameter is value-->
        </div>
        <div class="form-group">
            {{Form::file('cover_image')}}
        </div>
        <!-- forms can be sent either using GET or POST, however, Laravel allows us to spooth the method and use e.g. PUT -->
        {{Form::hidden('_method', 'PUT')}}
        {{Form::submit('Submit', ['class' => 'btn btn-primary'])}}
    {!! Form::close() !!}
@endsection