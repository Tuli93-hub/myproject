package com.tuli

class UIHelperTagLib {

    static namespace = "UIHelper"

    AuthenticationService authenticationService


    def userActionMenu = { attrs, body ->
        out << '<li class="nav-item dropdown show">'
        out << g.link(class:"nav-link dropdown-toggle", "data-toggle":"dropdown"){authenticationService.getUserName()}
        out << "</li>"
    }


    def leftNavigation = { attrs, body ->
        List navigations = [
                [controller: "dashboard", action: "index", name: "Dashboard"],
                [controller: "user", action: "profile", name: "Profile"],
        ]

        if(authenticationService.isAdministratorUser()){
            navigations.add([controller: "user", action: "index", name: "User List"])
        }
        if(authenticationService.isAdministratorUser()){
            navigations.add([controller: "user", action: "create", name: "Signup"])
        }

        navigations.each { menu ->
            out << '<li class="list-group-item">'
            out << g.link(controller: menu.controller, action: menu.action) { g.message(code: menu.name, args: ['']) }
            out << '</li>'
        }
    }



}
