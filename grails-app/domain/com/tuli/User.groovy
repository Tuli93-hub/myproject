package com.tuli

class User {
    Integer id
    String fullName
    String userName
    String password
    String email
    String mobile
    String userType = GlobalConfig.USER_TYPE.REGULAR_MEMBER


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






}
