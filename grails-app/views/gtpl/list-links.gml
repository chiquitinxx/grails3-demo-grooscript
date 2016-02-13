p model.title
ul(class: "list-links") {
	model.list.each { item ->
		li {
			a(href: item.url) {
				p item.text
			}
		}
	}
}