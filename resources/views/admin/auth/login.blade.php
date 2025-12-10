<div>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WS Games - Login</title>
</head>
    <body>
        <form action={{ url('/admin/login') }} method="POST">
            @csrf
            <h1>Admin Login</h1>
            {{-- if there is email error, display it --}}
            @if ($errors->has('email'))
            <p class="error">{{ $errors->first('email') }}</p>
            @endif
            <label for="username">Username: </label>
            <input type="text" name="username" id="username">
            <label for="password">Password: </label>
            <input type="password" name="password" id="password">
            <input type="submit" value="Login">
        </form>
    </body>
</html>
