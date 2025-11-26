<x-layout> 
    <div class="game-detail">
        <x-slot:subtitle>
            {{ $game->title }}
        </x-slot:subtitle>

        <h1 class="game-title">{{ $game->title }}</h1>

        <div class="game-info">
            <p><span>Description:</span> {{ $game->description }}</p>
            <p><span>Author:</span> {{ $game->author->username ?? 'Unknown' }}</p>
            <p><span>Created at:</span> {{ $game->created_at }}</p>
        </div>

        <form id="delete-form" 
            action="{{ url('admin/games/' . $game->slug) }}" 
            method="POST"
            class="game-delete-form">
            @csrf
            @method('DELETE')
            <button type="submit" class="game-delete-btn">Delete Game</button>
        </form>
    </div>
    
    <section class="game-topscore-section">
        <h3 class="game-topscore-title">Top Score</h3>

        @if($game->topScores->isEmpty())
            <p class="game-no-score">No scores recorded for this game yet.</p>
        @else
            <ol class="game-score-list">
                @foreach ($game->topScores as $score)
                    <li class="game-score-item">
                        <span class="game-score-user">{{ $score->user->username }}</span>
                        <span class="game-score-value">{{ $score->score }}</span>
                        <span class="game-score-date">{{ $score->timestamp }}</span>
                    </li>
                @endforeach
            </ol>
        @endif
    </section>
</x-layout>
