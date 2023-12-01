<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 06/11/2023
  Time: 9:26 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<form:form modelAttribute="loaighe" action="/loaighe/update/${loaighe.id}" method="post" class="form-horizontal" enctype="multipart/form-data">
    <div class="form-group">
        <label class="control-label col-sm-2">ma</label>
        <div class="col-sm-10">
            <form:input path="maloaighe" class="form-control"/>
                <%--  <form:errors path="ma" cssStyle="color: red"/>--%>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">tenloai</label>
        <div class="col-sm-10">
            <form:input path="tenloai" class="form-control"/>
                <%--            <form:errors path="ten" cssStyle="color: red"/>--%>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">gia</label>
        <div class="col-sm-10">
            <form:input path="gia" class="form-control"/>
                <%--            <form:errors path="ma" cssStyle="color: red"/>--%>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">trang thai</label>
        <div class="col-sm-10">
            <form:radiobutton path="trangthai" class="form-control" label="Hoat dong" value="true"/>
            <form:radiobutton path="trangthai" class="form-control" label="Khong hoat dong" value="false"/>
        </div>
    </div>
    <button type='submit' class='btn btn-primary'>update</button>
    <button type='button' class='btn btn-primary'><a href="/loaighe/hien-thi" style="color: white"1>return</a></button>
</form:form>
</body>
</html>
