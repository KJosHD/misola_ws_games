<x-layout> 
    <x-slot:subtitle>
        {{ $game->title }}
    </x-slot>
    <h2>{{$game->title}}</h2>

    <button type="button" class="" id="delete-btn"> </button>
    <p>{{$game->description}}</p>
    <p>Author: {{ $game->author->username }}</p>
    <p>Created at: {{$game->created_at}}</p>
    <h3>Top Scores</h3>

    <div id="top-scores">

    </div>
</x-layout>
