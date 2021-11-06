@extends('layout')
@section('title', 'Home Page')
@section('content')
    <h1>Home Page</h1>
    <h2>Welcome {{$name}}</h2>
    <ul>
        @foreach($array as $item)
        <li>{{$item}}</li>
        @endforeach
    </ul>
@endsection
