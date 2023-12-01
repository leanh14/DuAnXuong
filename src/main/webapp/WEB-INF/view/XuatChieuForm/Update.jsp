<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <title>HEllo</title>
</head>
<body class="container">
<form:form modelAttribute="xuatChieu" action="/xuatchieu/update/${xuatChieu.id}" method="post">
    <div class="form-group">
        <label>Mã</label>
        <form:input path="ma" cssClass="form-control" value="${xuatChieu.ma}" />
    </div>
    <div class="form-group">
        <label>Ten Rap</label>
        <form:select path="rap.id" class="form-control">
            <c:forEach var="r" items="${listRap}">
                <form:option value="${r.id}">${r.ten}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <label>Ten Phim</label>
        <form:select path="phim.id" class="form-control">
            <c:forEach var="p" items="${listPhim}">
                <form:option value="${p.id}">${p.ten}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <label>Ten Phong</label>
        <form:select path="phong.id" class="form-control">
            <c:forEach var="c" items="${listPhong}">
                <form:option value="${c.id}">${c.tenPhong}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <label>Ten Rap</label>
        <form:select path="tang.id" class="form-control">
            <c:forEach var="t" items="${listTang}">
                <form:option value="${t.id}">${t.tenTang}</form:option>
            </c:forEach>
        </form:select>
    </div>

    <div class="form-group">
        <label>Ngày Chieu</label>
        <form:input path="ngayChieu" type="date" cssClass="form-control" value="${xuatChieu.ngayChieu}" />
    </div>
    <div class="form-group">
        <label>Gia</label>
        <form:input path="gia"  cssClass="form-control" value="${xuatChieu.gia}"  />
    </div>
    <div class="form-group">
        <label>So Luong</label>
        <form:input path="soluong"  cssClass="form-control" value="${xuatChieu.soluong}"  />
    </div>
    <div class="form-group">
        <label>TrangThai</label>
        <form:radiobutton path="trangThai"  value="0"/>Hoat dong
        <form:radiobutton path="trangThai"  value="1"/>Khong hoat dong
    </div>

    <button type="submit" class="btn btn-primary">Update</button>
</form:form>
</body>
</html>
