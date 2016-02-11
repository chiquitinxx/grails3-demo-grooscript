<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Cubes color demo</title>
    <asset:javascript src="spring-websocket" />
</head>
<body>
    <grooscript:code>
        def colors = ['navy','blue','aqua','teal','olive','green','lime','yellow',
        'orange','red','fuchsia','purple','maroon','white','silver','gray','black']

        def randomColor = new Random()

        def touch(row, column) {
            GrooscriptGrails.doRemoteCall 'squares', 'touch',
                [row: row, column: column, color: randomColor.nextInt(colors.size())]
        }
    </grooscript:code>
    <grooscript:initSpringWebsocket>
        println 'Websocket is up!'
        GrooscriptGrails.sendWebsocketMessage '/app/colors'
    </grooscript:initSpringWebsocket>

    <grooscript:onServerEvent path="/topic/colors">
        allCubes(data)
    </grooscript:onServerEvent>

    <grooscript:onServerEvent path="/topic/touch">
        $('#row-'+data.row+'-'+data.column).removeClass().addClass('cube ' + colors[data.color])
    </grooscript:onServerEvent>

    <grooscript:template functionName="allCubes" onLoad="false" itemSelector="body">
        table(id: "all-cubes") {
            data.eachWithIndex { row, i ->
                tr {
                    row.eachWithIndex { color, j ->
                        td(id: 'row-' + i + '-' + j,
                            class: 'cube ' + colors[color],
                            onmouseover: 'touch(' + i + ', ' + j + ')')
                    }
                }
            }
        }
    </grooscript:template>
</body>
</html>