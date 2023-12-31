<!doctype html>
<html>
<head>
<meta name="layout" content="main">
</head>
<body>
<div class="form-group">
    <label><g:message code="Userame"/> *</label>
    <g:textField name="userName" class="form-control" value="${user?.userName}" placeholder="Please Enter  Name"/>
</div>

<div class="form-group">
    <label><g:message code="Fullname"/></label>
    <g:textField name="fullName" class="form-control" value="${user?.fullName}" placeholder="Please Enter Full Name"/>
</div>

<div class="form-group">
    <label><g:message code="Mobile"/></label>
    <g:textField name="mobile" type="text" class="form-control" value="${user?.mobile}" placeholder="Please Enter Mobile Number"/>
</div>

<div class="form-group">
    <label><g:message code="Email"/> *</label>
    <g:field type="email" name="email" class="form-control" value="${user?.email}" placeholder="Please Enter Email"/>
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="Password"/> *</label>
        <g:passwordField name="password" class="form-control" value="${user?.password}" placeholder="Please Enter Password"/>
    </div>
</g:if>

</body>
</html>
