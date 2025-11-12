<x-layout> 
    <x-slot:subtitle>
        Games
    </x-slot:subtitle>
    <h2 class="g-h2">Games</h2>
    <table class="g-table">
        <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Author ID</th>
                <th>Created at</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($games as $gameList)
                <tr>
                    <td>{{ $gameList -> title }}</td>
                    <td>{{ $gameList -> description }}</td>
                    <td>{{ $gameList -> author_id }}</td>
                    <td>{{ $gameList -> created_at }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <p>test</p>
</x-layout>
