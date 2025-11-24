<x-layout> 
    <x-slot:subtitle>
        {{ $user->username }}
    </x-slot:subtitle>
    <div>
        <div class="container-user">
            <div class="h2-user">
                <p>{{ $user->username }}</p>
            </div>
            <div class="user-about">
                <p><strong>Email:</strong> {{ $user->email }}</p>
                <p><strong>Registered on:</strong> {{ $user->created_at->format('F d, Y') }}</p>
                <p><strong>Last login:</strong> {{ $user->last_login_at ? $user->last_login_at->format('F d, Y H:i') : 'Never' }}</p>
            </div>
        </div>
    </div>
    @if ($user->playedGames->isEmpty())
        <p>This user has not played any games yet.</p>
    @else
        <h3 class="h3-user">Games Played by {{ $user->username }}</h3>
        <table class="g-table">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Highest Score</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($user->playedGames as $game)
                    <tr>
                        <td>{{ $game->title }}</td>
                        <td>{{ $game->description }}</td>
                        <td>{{ $game->pivot->score }}
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif  
    @if ($user->playedGames->isEmpty())
        <p>This user has not Created any games yet.</p>
    @else
        <h3 class="h3-user">Games Created by {{ $user->username }}</h3>
        <table class="g-table">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Created at</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($user->games as $game)
                    <tr>
                        <td>{{ $game->title }}</td>
                        <td>{{ $game->description }}</td>
                        <td>{{ $game->created_at }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif  
</x-layout>
