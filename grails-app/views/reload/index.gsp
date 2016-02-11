<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Reloading</title>
    <asset:javascript src="spring-websocket" />
</head>
<body>
    <grooscript:reloadOn path="/topic/reload"/>
    <p class="reload-message">Change something in this gsp or application.css!</p>
</body>
</html>