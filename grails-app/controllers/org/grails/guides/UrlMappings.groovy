package org.grails.guides

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "authentication" , action: "login")
        "/dashboard"(controller: "dashboard", action: "index")

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
