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
<form:form modelAttribute="veDat" action="/ve-dat/update/${veDat.id}" method="post">
    <div class="form-group">
        <label>Ten VXP</label>
        <form:select path="nhanVien.id" class="form-control">
            <c:forEach var="nv" items="${listNV}">
                <form:option value="${nv.id}">${nv.hoTen}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <label>Ten VXP</label>
        <form:select path="veXemPhim.id" class="form-control">
            <c:forEach var="cv" items="${listVXP}">
                <form:option value="${cv.id}">${cv.tenPhim}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <label>Mã</label>
        <form:input path="ma" cssClass="form-control" value="${veDat.ma}" />
    </div>

    <div class="form-group">
        <label>Ngày Tao</label>
        <form:input path="ngayTao" type="date" cssClass="form-control" value="${veDat.ngayTao}"  />
    </div>
    <div class="form-group">
        <label>Ngày Thanh Toan</label>
        <form:input path="ngayThanhToan" type="date" cssClass="form-control" value="${veDat.ngayThanhToan}"  />
    </div>
    <div class="form-group">
        <label>Tong tien</label>
        <form:input path="tongTien" cssClass="form-control" value="${veDat.tongTien}"  />
    </div>

    <button type="submit" class="btn btn-primary">Update</button>
</form:form>
</body>
</html>
