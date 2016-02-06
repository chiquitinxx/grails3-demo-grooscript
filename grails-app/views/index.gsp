<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grooscript Grails 3 Demo</title>
</head>
<body>
    <p class="big-text">Grooscript & Grails 3</p>

    <asset:javascript src="generated/Hello"/>
    <grooscript:code>
        import gs.Hello

        $('body').append '''<p>
          <a href="http://grooscript.org">Grooscript Home</a> &&
          <a href="https://twitter.com/grooscript">Twitter</a>
        </p>'''
        new Hello().world()
    </grooscript:code>
</body>
</html>
