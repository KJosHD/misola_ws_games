<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WS Games</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body>
    <header>
        <nav class="nav">
            <h1>WS Games</h1>
            <ul>
                <li><a href="{{ url('admin') }}">Admin Users</a></li>
                <li><a href="{{ url('admin/users') }}">Platform Users</a></li>
                <li><a href="{{ url('admin/games') }}">Games</a></li>
                <li>
                    <a href="{{ url('admin/logout') }}"
                       onclick="event.preventDefault(); document.getElementById('admin-logout-form').submit();">
                        Logout
                    </a>
                </li>
            </ul>
            <form id="admin-logout-form" method="POST" action="{{ url('admin/logout') }}" style="display:none;">
                @csrf
            </form>
        </nav>
    </header>

    <main>
        {{ $slot }}
    </main>

    <footer>
        <p>&copy; Josh C. Misola | Comteq Computer and Business College, 2025</p>
    </footer>
</body>
</html>
