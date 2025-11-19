<x-layout> 
    <x-slot:subtitle>
        Platform users
    </x-slot:subtitle>
    <h2 class="au-h2">Platform users</h2>
    <table class="au-table">
        <thead>
            <tr>
                <th>Username</th>
                <th>Created at</th>
                <th>Last Login</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{ $user -> username }}</td>
                    <td>{{ $user -> created_at }}</td>
                    <td>{{ $user -> last_login }}</td>
                    <td><a href="{{ url('admin/users/' . $user->username) }}">View Profile</a></td>
                </tr>
            @endforeach
        </tbody>
    </table>
</x-layout>
