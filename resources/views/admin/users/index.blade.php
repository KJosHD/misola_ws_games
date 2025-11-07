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
            </tr>
        </thead>
        <tbody>
            @foreach ($admin_users as $adminUser)
                <tr>
                    <td>{{ $adminUser -> username }}</td>
                    <td>{{ $adminUser -> created_at }}</td>
                    <td>{{ $adminUser -> last_login }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</x-layout>
