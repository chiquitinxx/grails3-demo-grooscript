p 'List of links'
ul(class: "list-links") {
	model.each { item ->
		li {
			a(href: item.url) {
				p item.text
			}
		}
	}
}