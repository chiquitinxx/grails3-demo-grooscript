package grails3.demo.grooscript.game

import game.Cubes
import spock.lang.Specification

class CubesSpec extends Specification {

    def 'init cubes'() {
        when:
        def game = new Cubes(2, 3)

        then:
        game.colors == [[0, 0, 0], [0, 0, 0]]
    }

    def 'touch game'() {
        given:
        def game = new Cubes(4, 5)

        when:
        game.touch(2, 3, 5)

        then:
        game.colors[2][3] == 5
    }
}
