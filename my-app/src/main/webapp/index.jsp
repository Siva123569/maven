<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;

            /* Full screen background image */
            background: url("https://images.unsplash.com/photo-1503264116251-35a269479413") no-repeat center center fixed;
            background-size: cover;

            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
        }

        .login-box {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px 40px;
            width: 350px;
            border-radius: 12px;
            box-shadow: 0 5px 25px rgba(0,0,0,0.4);
        }

        .login-box h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .login-box input {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px 0;
            border: 1px solid #aaa;
            border-radius: 5px;
            font-size: 15px;
        }

        .login-box button {
            width: 100%;
            padding: 12px;
            background: #007bff;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .login-box button:hover {
            background: #0056c7;
        }

        .footer-text {
            text-align: center;
            margin-top: 15px;
            color: #555;
        }

        .footer-text a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="login-box">
        <h2>Login</h2>

        <form action="/login" method="post">
            <input type="text" name="username" placeholder="Enter Username" required>
            <input type="password" name="password" placeholder="Enter Password" required>

            <button type="submit">Login</button>
        </form>

        <p class="footer-text">
            Need an account? <a href="#">Register</a>
        </p>
    </div>
</body>
</html>
