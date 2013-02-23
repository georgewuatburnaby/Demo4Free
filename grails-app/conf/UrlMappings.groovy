class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{ constraints { // apply constraints here
			} }

		"/"(view:"/index")
		"500"(view:'/error')

		"/headingList" (controller: "HeadingList") {
			action = [GET: "show", PUT: "update", DELETE: "delete", POST: "save"]
		}
	}
}
