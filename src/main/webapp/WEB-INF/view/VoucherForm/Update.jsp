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
<form:form modelAttribute="voucher" action="/voucher/update/${voucher.id}" method="post">
    <div class="form-group">
        <label>Mã</label>
        <form:input path="ma" cssClass="form-control" value="${voucher.ma}" />
        <form:errors path="ma"/>
    </div>
    <div class="    form-group">
        <label>Ten phim</label>
        <form:select path="veXemPhim.id" class="form-control">
            <c:forEach var="cv" items="${listVXP}">
                <form:option value="${cv.id}">${cv.tenPhim}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <label>Tên voucher</label>
        <form:input path="tenVoucher" cssClass="form-control" value="${voucher.tenVoucher}"  />
    </div>
    <div class="form-group">
        <label>Ngày BD</label>
        <form:input path="ngayBatDau" cssClass="form-control" value="${voucher.ngayBatDau}"  />
    </div>
    <div class="form-group">
        <label>Ngày KT</label>
        <form:input path="ngayKetThuc" cssClass="form-control" value="${voucher.ngayKetThuc}"  />
    </div>

    <button type="submit" class="btn btn-primary">Update</button>
</form:form>
</body>
</html>
