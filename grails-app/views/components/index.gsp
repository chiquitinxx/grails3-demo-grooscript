<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Reloading</title>
    <asset:javascript src="webcomponents.min.js"/>
</head>
<body>
    <grooscript:component src="component.Status" name="controller-status"/>

    <div class="row">
        <div class="col-md-4">
            <controller-status controller="reload" action="index"></controller-status>
        </div>
        <div class="col-md-4">
            <controller-status controller="squares" action="index"></controller-status>
        </div>
        <div class="col-md-4">
            <controller-status controller="noIdea" action="index"></controller-status>
        </div>
        <div class="col-md-4">
            <controller-status controller="components" action="index"></controller-status>
        </div>

    </div>

</body>
</html>