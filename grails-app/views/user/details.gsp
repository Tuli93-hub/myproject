<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        </head>
    <body>

    <div class="card">
        <div class="card-header">
            <g:message code="Use4r Details" args="['Details']"/>
        </div>
        <div class="card-body">
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
                    </tr>
                </table>
            </g:if>
            <div class="form-action-panel">
                <g:link controller="user" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </div>
    </div>
    </body>
</html>
