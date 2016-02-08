package gs

class Hello {

    def methodMissing(String name, args) {
        println "Hello ${name}!"
    }
}
