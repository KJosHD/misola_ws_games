<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>misola_ws_games</title>
    @vite('resources/css/app.css')
</head>
<body>
    <header>
        <div class="nav">
            <h1>WS GAMES</h1>
            <nav> 
                <ul>
                    <li><a href={{(url('admin'))}}>Admin Users</a></li>
                    <li><a href={{(url('admin/users'))}}>Platform Users</a></li>
                    <li><a href={{(url('admin/games'))}}>Games</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <footer>
        <div>
            <p>&copy; Josh C. Misola | Comteq Computer
                and Business College, 2025
            </p>
        </div>
    <footer>
</body>
</html>