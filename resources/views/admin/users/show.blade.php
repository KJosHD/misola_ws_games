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

                @if(!$user->is_blocked)
                    <button class="block-btn" onclick="document.querySelector('dialog').showModal()">Block User</button>
                @else
                    <form action={{ url('/admin/users/'.$user->username.'/unblock') }} method="POST">
                        @csrf
                        @method('PUT')
                        <button class="unblock-btn">Unblock User</button>
                    </form>
                @endif
                
                <!-- Block User Modal -->
                <dialog>
                    <form action="{{ url('admin/users/' . $user->username . '/block') }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="modal-body">
                            <label>Reason for Blocking</label><br>
                            <select name="block_reason" required>
                                <option>You have been blocked by an administrator.</option>
                                <option>You have been blocked for spamming.</option>
                                <option>You have been blocked for cheating</option>
                            </select>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn" onclick="document.querySelector('dialog').close()">Cancel</button>
                            <button type="submit" class="btn btn-danger">Block User</button>
                        </div>
                    </form>
                </dialog>
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
