<!doctype html>
<html lang="en">
<head>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Document</title>
</head>
<body class="container">
<%--<form action="/khach-hang/search" method="get">--%>
<%--    <input name="keyword">--%>
<%--    <button type="submit">Tim Kiem</button>--%>
<%--</form>--%>
<%--@elvariable id="khachHang" type=""--%>
<%--@elvariable id="phong" type=""--%>
<form:form modelAttribute="phong" action="/phong/update/${phong.id}" method="post">
    <div class="form-group">
        <label>Tên Tầng</label>
        <form:select path="tang.id" class="form-control">
            <c:forEach var="t" items="${listTang}">
                <form:option value="${t.id}">${cv.tenTang}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="mb-3">
        <label class="form-label">Mã Phòng</label>
        <form:input path="ma" class="form-control"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Tên Phòng</label>
        <form:input path="tenPhong" class="form-control"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Loại Phòng</label>
        <form:input path="loaiPhong" class="form-control"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Số Chỗ Ngồi </label>
        <form:input path="soChoNgoi" class="form-control"/>
    </div>
    <div class="mb-3">
        <label class="form-label">Trạng Thái</label>
        <form:radiobutton path="trangThai" value="1"/>1
        <form:radiobutton path="trangThai" value="0"/>0
    </div>
    <button class="btn btn-primary">Update</button>
</form:form>
</body>
</html>