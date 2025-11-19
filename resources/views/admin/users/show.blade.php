<x-layout> 
    <p> </p>
    <p> </p>
    <p> </p>
    <x-slot:subtitle>
        {{ $user->username }}
    </x-slot:subtitle>
    <h2>{{ $user->username }}</h2>

    @if ($user->games->isEmpty())
        <p>This user has not created any games yet.</p>
    @else
        <h3>Games Created by {{ $user->username }}</h3>
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
