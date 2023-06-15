package com.tuli

class AuthenticationController {

    AuthenticationService authenticationService
    UserService userService

    def login() {
        if (authenticationService.isAuthenticated()) {
            redirect(controller: "dashboard", action: "index")
        }
    }


    def doLogin() {
        if (authenticationService.doLogin(params.userName, params.password)) {
            redirect(controller: "dashboard", action: "index")
        } else {
            redirect(controller: "authentication", action: "login")
        }
    }


    def logout() {
        session.invalidate()
        redirect(controller: "authentication", action: "login")
    }

    def registration() {
        [user: flash.redirectParams]
    }


    def doRegistration() {
        def response = userService.save(params)
        if (response.isSuccess) {
            authenticationService.setUserAuthorization(response.model)
            redirect(controller: "dashboard", action: "index")
        } else {
            flash.redirectParams = response.model
            redirect(controller: "authentication", action: "registration")
        }
    }

}

