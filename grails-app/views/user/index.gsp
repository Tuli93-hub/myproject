<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>
<div class="card-header">
    <g:message code="User List" args="['List']"/>
<span class="float-right">

    <div class="btn-group">
        <g:form controller="user" action="index" method="GET">
            <div class="input-group" id="search-area">
                <g:select name="colName" class="form-control" from="[fullName: 'Full Name',userName: 'User Name', email: 'Email']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit">Search</button>
                </span>
            </div>
        </g:form>
    </div>

    <div class="btn-group">
        <g:link controller="user" action="create" class="btn btn-success"><g:message code="Signup"/></g:link>
        <g:link controller="user" action="index" class="btn btn-primary"><g:message code="Reload"/></g:link>
    </div>
</span>

<div class="card">

    </div>

    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <g:sortableColumn property="userName" title="${g.message(code: "User name")}"/>
                <g:sortableColumn property="fullName" title="${g.message(code: "Full name")}"/>
                <g:sortableColumn property="email" title="${g.message(code: "Email")}"/>
                <th class="action-row">Action</th>

            </tr>
            </thead>
            <tbody>
            <g:each in="${user}" var="info">
                <tr>
                    <td>${info?.userName}</td>
                    <td>${info?.fullName}</td>
                    <td>${info?.email}</td>
                    <td>
                        <div class="btn-group">
                            <g:link controller="user" action="details" class="btn btn-secondary" id="${info.id}"><g:message code="Show details"/></g:link>
                            <g:link controller="user" action="edit" class="btn btn-secondary" id="${info.id}"><g:message code="Edit"/></g:link>
                            <g:link controller="user" action="delete" id="${info.id}" class="btn btn-secondary delete-confirmation"><g:message code="delete"/></g:link>
                        </div>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        <div class="paginate">
            <g:paginate total="${total ?: 0}" />
        </div>
    </div>
</div>

</body>
</html>

