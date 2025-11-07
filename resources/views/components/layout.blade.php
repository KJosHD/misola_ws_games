<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WS Games</title>
    @vite('resources/css/app.css')
</head>
<body>
    <header>
        <nav class="nav">
            <h1>WS Games</h1>
            <ul>
                <li><a href="{{ url('admin') }}">Admin Users</a></li>
                <li><a href="{{ url('admin/users') }}">Platform Users</a></li>
                <li><a href="{{ url('admin/games') }}">Games</a></li>
            </ul>
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
