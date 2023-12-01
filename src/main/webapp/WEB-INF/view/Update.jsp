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
<form:form modelAttribute="nhanVien" action="/nhan-vien/update/${nhanVien.id}" method="post">
    <div class="form-group">
        <label>Mã</label>
        <form:input path="ma" cssClass="form-control" value="${nhanVien.ma}" />
        <form:errors path="ma"/>
    </div>
    <div class="    form-group">
        <label>Ma chuc vu</label>
        <form:select path="chucVu.id" class="form-control">
            <c:forEach var="cv" items="${listCv}">
                <form:option value="${cv.id}">${cv.ma}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <label>Ho Tên</label>
        <form:input path="hoTen" cssClass="form-control" value="${nhanVien.hoTen}"  />
    </div>
    <div class="form-group">
        <label>Ngày Sinh</label>
        <form:input path="ngaySinh" cssClass="form-control" value="${nhanVien.ngaySinh}"  />
        <form:errors path="ngaySinh"/>
    </div>
    <div class="form-group">
        <label>Giới Tính</label>
        <form:radiobutton path="gioiTinh"  value="1"/>Nam
        <form:radiobutton path="gioiTinh" value="0"/>Nu
    </div>

    <button type="submit" class="btn btn-primary">Update</button>
</form:form>
</body>
</html>
