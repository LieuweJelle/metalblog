@extends('posts.postmaster')

@section('content')
    <script src="{{ asset('js/functions.js') }}"></script>
    <form action="/search" method="POST" role="search">
        @csrf
        <table class="table table-bordered table striped">
            <thead>
                <tr>
                    <th>post</th>
                    <th>post</th>
                    <th>post</th>
                    <th>post</th>
                    <th>comment</th>
                    <th>comment</th>
                </tr>
            </thead>
            <tbody>
                @foreach($query as $row)
                    <tr>
                        <td>{{ $row->body }}</td>
                        <td>{{ $row->title }}</td>
                        <td>{{ $row->subbody}}</td>
                        <td>{{ $row->subtitle}}</td>
                        <td>{{ $row->second_body}}</td>
                        <td>{{ $row->second_title}}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </form>
@endsection
