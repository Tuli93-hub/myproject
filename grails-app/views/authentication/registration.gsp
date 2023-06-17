<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta name="layout" content="public"/>

</head>

<body>

<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 mx-auto">
                    <h1 class="text-center login-title">User Registration</h1>
                    <div class="account-wall">
                        <g:img dir="images" file="grails.svg" class="profile-img"/>
                        <g:form controller="authentication" action="doRegistration" >
                            <g:textField name="userName" class="form-control" placeholder="User Name" required="required" />
                            <g:textField name="fullName" class="form-control" placeholder="FullName" required="required" />
                            <g:textField name="email" class="form-control" placeholder="Email" required="required" />
                            <g:textField name="mobile" class="form-control" placeholder="Mobile Number" required="required" />
                            <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
                            <g:submitButton class="btn btn-lg btn-primary btn-block" name="registration" value="Registration"/>
                            <g:link controller="authentication" action="login" class="btn btn-lg btn-primary btn-block">User Login</g:link>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>