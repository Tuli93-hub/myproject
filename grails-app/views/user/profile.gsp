<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="public" />

</head>
<body>
<div class="container-fluid">
    <div class="row">
        <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
            <ul class="list-group">
                <UIHelper:leftNavigation/>
            </ul>
        </nav>
        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
            <div class="card">
                <h2>Profile</h2>

                <div class="card-header">
                    <g:img dir="images" file="grails.svg" class="pro"/>

                </div>
                <div class="card-body" >
                    <g:if test="${user}">
                        <table class="table">
                            <tr>
                                <th class="text-right"><g:message code="Username"/></th><td class="text-left">${user.userName}</td>
                        </tr>
                        <tr>
                            <th class="text-right"><g:message code="Fullname"/></th><td class="text-left">${user.fullName}</td>
                        </tr>
                        <tr>
                            <th class="text-right"><g:message code="Email"/></th><td class="text-left">${user.email}</td>
                        <tr>
                            <th class="text-right"><g:message code="Mobile"/></th><td class="text-left">${user.mobile}</td>
                        </tr>
                        </tr>
                    </table>
                    </g:if>
                    <div class="form-action-panel">
                        <g:link controller="authentication" action="logout" class="btn btn-primary"><g:message code="Logout"/></g:link>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>


</body>
</html>
