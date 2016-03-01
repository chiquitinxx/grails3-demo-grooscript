package component

import org.grooscript.grails.util.GrooscriptGrails

class Status {

    static style = '''
        p { text-align: center; padding: 20px; font-size: 2em }
        .good { background-color: green; color: white }
        .bad { background-color: red; color: white }
    '''

    String controller
    String action
    int status = 0

    static renderAfter = ['good', 'bad']

    boolean checkStatus() {
        GrooscriptGrails.doRemoteCall(controller, action, null, this.&good, this.&bad)
    }

    void good() {
        status = -1
    }

    void bad(error) {
        status = error.status
    }

    def render() {
        if (status == 0) checkStatus()
        switch (status) {
            case -1: p([class: 'good'], infoUrl()); break
            case 0: p class: 'checking', 'Checking url ...'; break
            default: p([class: 'bad'], infoUrl())
        }
    }

    private Closure infoUrl() {
        { ->
            yieldUnescaped "controller: $controller<br/> action: $action"
            if (status > 0) {
                br()
                yield status.toString()
            }
        }
    }
}
