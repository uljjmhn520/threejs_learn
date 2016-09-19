
<!DOCTYPE html>
<html lang="en">
<head>
    <title>three.js webgl - shaders - sky sun shader</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <style>

        body {
            color: #000;
            font-family:Monospace;
            font-size:13px;
            text-align:center;
            font-weight: bold;

            background-color: #fff;
            margin: 0px;
            overflow: hidden;
        }

        #info {
            color:#ccc;
            text-shadow: 1px 1px rgba(0,0,0,0.25);
            position: absolute;
            top: 0px; width: 100%;
            padding: 5px;

        }

        a {
            color: #fff;
        }

    </style>
</head>
<body>

<div id="info"><a href="http://threejs.org" target="_blank">three.js</a> webgl - sky + sun shader

    <br/><a href="https://plus.google.com/117614030945250277079/posts/MYkgKdvLhNj">More info</a> by <a href="http://twitter.com/blurspline">@blurspline</a>

</div>

<script src="/js/three/build/three.js"></script>
<script src="/js/three/examples/js/Detector.js"></script>
<script src="/show/js/environment.js"></script>


<script>

    if ( ! Detector.webgl ) Detector.addGetWebGLMessage();

    var environment = new Environment();
    environment.camera.setPosition(0, 100, 2000 );

    environment.renderer.setPixelRatio( window.devicePixelRatio );
    environment.renderer.setSize( window.innerWidth, window.innerHeight );

    environment.renderer.render();
    document.body.appendChild( environment.renderer.getDomElement() );
</script>

</body>

</html>
