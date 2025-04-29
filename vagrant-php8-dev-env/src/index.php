<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple PHP Landing Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
            padding: 20px;
            text-align: center;
        }
        header {
            background: #35424a;
            color: #ffffff;
            padding: 20px 0;
            margin-bottom: 20px;
        }
        h1 {
            margin: 0;
        }
        .feature-box {
            float: left;
            width: 30%;
            padding: 10px;
            box-sizing: border-box;
            background: #fff;
            margin: 1.5%;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        footer {
            background: #35424a;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin-top: 20px;
            clear: both;
        }
        @media(max-width: 768px) {
            .feature-box {
                width: 100%;
                float: none;
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>Welcome to Our Site</h1>
            <p>Powered by PHP <?php echo phpversion(); ?></p>
        </div>
    </header>

    <div class="container">
        <div class="feature-box">
            <h2>Feature One</h2>
            <p><?php echo date('l, F jS Y'); ?></p>
            <p>Current server time</p>
        </div>
        
        <div class="feature-box">
            <h2>Feature Two</h2>
            <p><?php echo "Your IP: " . $_SERVER['REMOTE_ADDR']; ?></p>
            <p>Visitor information</p>
        </div>
        
        <div class="feature-box">
            <h2>Feature Three</h2>
            <p><?php echo "Server: " . $_SERVER['SERVER_SOFTWARE']; ?></p>
            <p>Server information</p>
        </div>
    </div>

    <footer>
        <div class="container">
            <p>&copy; <?php echo date('Y'); ?> My PHP Landing Page. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>