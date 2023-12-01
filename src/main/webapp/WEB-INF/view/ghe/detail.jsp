
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


<form:form modelAttribute="ghe" action="/ghe/update/${ghe.id}" method="post" class="form-horizontal" enctype="multipart/form-data">
    <div class="form-group">
        <label class="control-label col-sm-2">ma</label>
        <div class="col-sm-10">
            <form:input path="ma" class="form-control"/>
                <%--            <form:errors path="ma" cssStyle="color: red"/>--%>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">tenhangghe</label>
        <div class="col-sm-10">
            <form:input path="tenhangghe" class="form-control"/>
                <%--   <form:errors path="ten" cssStyle="color: red"/>--%>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">tenghe</label>
        <div class="col-sm-10">
            <form:input path="tenghe" class="form-control"/>
                <%--  <form:errors path="ma" cssStyle="color: red"/>--%>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">LoaiGhe</label>
        <div class="col-sm-10">
            <form:select path="loaiGhe">
                <c:forEach items="${loaighe}" var="lg">
                    <form:option value="${lg.id}" selected="${lg.id eq ghe.loaiGhe.id ? 'selected' : ''}">${lg.tenloai}</form:option>
                </c:forEach>
            </form:select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Phong</label>
        <div class="col-sm-10">
            <form:select path="phong">
                <c:forEach items="${phong}" var="ph">
                    <form:option value="${ph.id}" selected="${ph.id eq ghe.phong.id ? 'selected' : ''}">${ph.ten}</form:option>
                </c:forEach>
            </form:select>
        </div>
    </div>
    <button type='submit' class='btn btn-primary'>update</button>
    <button type='button' class='btn btn-primary'><a href="/ghe/hien-thi" style="color: white"1>return</a></button>
</form:form>



</body>
</html>
