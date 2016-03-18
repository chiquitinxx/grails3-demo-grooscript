package grails3.demo.grooscript

import org.grooscript.asts.PhantomJsTest
import spock.lang.Specification

class PhantomJsSpec extends Specification {

    def 'check last mrhaki blogpost'() {
        given:
        System.setProperty('PHANTOMJS_HOME', 'node_modules/phantomjs')

        expect:
        mrHakiBlogPage.firstTitle == "Gradle Goodness: Source Sets As IntelliJ IDEA Modules"
    }

    @PhantomJsTest(url = "http://mrhaki.blogspot.com.es/")
    Map getMrHakiBlogPage() {
        def firstTitle = $(".post-title a").html()
        [firstTitle: firstTitle]
    }
}
