<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Usain Bolt Gallery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        .gallery {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
            justify-content: center;
        }
        .gallery img {
            width: 300px;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            transition: 0.3s;
        }
        .gallery img:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <h1>Usain Bolt Image Gallery</h1>

    <div class="gallery">
        <img src="https://upload.wikimedia.org/wikipedia/commons/9/9d/Usain_Bolt_Rio_2016.jpg" alt="Usain Bolt Rio 2016">
        <img src="https://upload.wikimedia.org/wikipedia/commons/f/fd/Usain_Bolt_2013_World_Championships.jpg" alt="Usain Bolt running">
        <img src="https://upload.wikimedia.org/wikipedia/commons/7/7a/Usain_Bolt_2009_World_Championships_Berlin.jpg" alt="Usain Bolt iconic pose">
    </div>

</body>
</html>
