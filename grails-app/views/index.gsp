<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grooscript Grails 3 Demo</title>
</head>
<body>
    <p class="big-text">Grooscript & Grails 3</p>

    <asset:javascript src="generated/Templates"/>
    <grooscript:code>
        import org.grooscript.templates.Templates

        $('body').append Templates.applyTemplate('list-links.gml', [
            [url: 'https://github.com/chiquitinxx/grooscript-grails3-plugin', text: 'Grooscript grails 3 plugin'],
            [url: 'https://github.com/chiquitinxx/grooscript-gradle-plugin', text: 'Grooscript gradle plugin']
        ])
    </grooscript:code>

    <asset:javascript src="generated/Hello"/>
    <grooscript:code>
        import gs.Hello

        $('body').append '''<footer><p>
          <a href="http://grooscript.org">Grooscript Home</a> &&
          <a href="https://twitter.com/grooscript">Twitter</a>
        </p></footer>'''
        new Hello().world()
    </grooscript:code>


</body>
</html>
