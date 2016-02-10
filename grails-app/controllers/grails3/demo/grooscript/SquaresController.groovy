package grails3.demo.grooscript

import game.Cubes
import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.SendTo
import org.springframework.messaging.simp.SimpMessagingTemplate

class SquaresController {

    SimpMessagingTemplate brokerMessagingTemplate
    Cubes cubes

    def index() {

    }

    def reset() {
        if (cubes) {
            cubes = null
        }
    }

    @MessageMapping("/colors")
    @SendTo("/topic/colors")
    protected List colors() {
        return game.colors
    }

    def touch(int row, int column, int color) {
        game.touch(row, column, color)
        brokerMessagingTemplate.convertAndSend('/topic/touch', [row: row, column: column, color: color])
        render 'ok'
    }

    private getGame() {
        if (cubes == null) {
            cubes = new Cubes(10, 10)
        }
        cubes
    }
}
