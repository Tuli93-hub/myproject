package com.tuli

class User {
    Integer id
    String fullName
    String userName
    String password
    String email
    String mobile

    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        password(blank: false)
        userName(nullable: true)
        mobile(nullable: true)

    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }

    static mapping = {
        version(false)

    }




}
