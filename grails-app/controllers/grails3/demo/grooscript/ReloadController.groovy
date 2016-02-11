package grails3.demo.grooscript

import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.SendTo

class ReloadController {

    def index() { }

    @MessageMapping("/reload")
    @SendTo("/topic/reload")
    protected String colors() {
        return 'reload!'
    }
}
