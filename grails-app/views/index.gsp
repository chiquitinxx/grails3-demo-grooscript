<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grooscript Grails 3 Demo</title>
</head>
<body>
    <p class="big-text">Grooscript & Grails 3</p>

    <div class="row">
        <div id="plugins" class="col-xs-12 col-md-4"></div>
        <div id="documentation" class="col-xs-12 col-md-4"></div>
        <div id="controllers" class="col-xs-12 col-md-4"></div>
    </div>

    <asset:javascript src="generated/Templates"/>
    <grooscript:code>
        import org.grooscript.templates.Templates

        $('#plugins').html Templates.applyTemplate('list-links.gml', [title: 'Plugins source code', list: [
            [url: 'https://github.com/chiquitinxx/grooscript-grails3-plugin', text: 'Grooscript grails 3 plugin'],
            [url: 'https://github.com/chiquitinxx/grooscript-gradle-plugin', text: 'Grooscript gradle plugin']
        ]])

        $('#documentation').html Templates.applyTemplate('list-links.gml', [title: 'Documentation', list: [
            [url: 'http://grooscript.org/grails3-plugin/', text: 'Grails plugin'],
            [url: 'http://grooscript.org/gradle/tasks.html', text: 'Gradle tasks info']
        ]])

        $('#controllers').html Templates.applyTemplate('list-links.gml', [title: 'Controllers', list: [
            [url: '${g.createLink(controller: 'squares')}', text: 'Squares Websockets'],
            [url: '${g.createLink(controller: 'reload')}', text: 'Reloading on Changes'],
            [url: '${g.createLink(controller: 'components')}', text: 'Components']
        ]])
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
