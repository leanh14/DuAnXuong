<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <title>Home</title>
</head>
<body class="container">
<form:form modelAttribute="chucVu" action="/chuc-vu/update/${chucVu.id}" method="post">

    <div class="form-group">
        <label>Ma</label>
        <form:input path="ma" cssClass="form-control" value="${chucVu.ma}" />
        <form:errors path="ma"/>
    </div>

    <div class="form-group">
        <label>Ten</label>
        <form:input path="ten" cssClass="form-control" value="${chucVu.ten}"  />
    </div>

    <button type="submit" class="btn btn-primary">Update</button>
</form:form>
</body>
</html>
