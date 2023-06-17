package com.tuli

class AuthenticationController {

    AuthenticationService authenticationService
    UserService userService

    def login() {
        if (authenticationService.isAuthenticated()) {
            redirect(controller: "user", action: "profile")
        }
    }


    def doLogin() {
        if (authenticationService.doLogin(params.email, params.password)) {
            if(authenticationService.isAdministratorUser()){
                redirect(controller: "user", action: "index")}
            else{
                redirect(controller: "user", action: "profile")
            }
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
            redirect(controller: "authentication", action: "login")
        } else {
            flash.redirectParams = response.model
            redirect(controller: "authentication", action: "registration")
        }
    }

}

