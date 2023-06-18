<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
    </head>
    <body>

    <div class="card">
        <div class="card-header">
            <g:message code="Add New User" args="['Create']"/>
        </div>
        <div class="card-body">
            <g:form controller="user" action="save">

                <g:render template="form"/>
                <div class="form-action-panel">
                    <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                    <g:link controller="user" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
                </div>
            </g:form>
        </div>
    </div>
    </body>
</html>
