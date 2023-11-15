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
<form:form modelAttribute="nhanVien" action="/nhan-vien/add" method="post">
    <div class="form-group">
        <label>Mã</label>
        <form:input path="ma" cssClass="form-control" />
    </div>
    <div class="form-group">
        <label>Ma chuc vu</label>
        <form:select path="chucVu.id" class="form-control">
            <c:forEach var="cv" items="${listCv}">
                <form:option value="${cv.id}">${cv.ma}</form:option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <label>Ho Tên</label>
        <form:input path="hoTen" cssClass="form-control" />

    </div>
    <div class="form-group">
        <label>Ngày Sinh</label>
        <form:input path="ngaySinh" type="date" cssClass="form-control" />
    </div>
    <div class="form-group">
        <label>Giới Tính</label>
        <form:radiobutton path="gioiTinh"  value="1"/>Nam
        <form:radiobutton path="gioiTinh"  value="0"/>Nu
    </div>




    <button type="submit" class="btn btn-primary">Add</button>
</form:form>
<h1 style="text-align: center">Danh sách Nhân Viên</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Ma</th>
        <th scope="col">Ten cv</th>
        <th scope="col">Ten</th>
        <th scope="col">NgaySinh</th>
        <th scope="col">Gioi tinh</th>
        <th scope="col">action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listNv}" var="nv">
        <tr>
            <td>${nv.id}</td>
            <td>${nv.ma}</td>
            <td>${nv.chucVu.ten}</td>
            <td>${nv.hoTen}</td>
            <td>${nv.ngaySinh}</td>
            <td>${nv.gioiTinh == 1 ? "Nam" : "Nu"}</td>

            <td>
                <a href="/nhan-vien/delete/${nv.id}" class="btn btn-primary">Delete</a>
                <a href="/nhan-vien/detail/${nv.id}" class="btn btn-primary">Detail</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>

    <div>
        <c:forEach begin="1" end="${totalPage}" varStatus="status">
            <a><a href="/nhan-vien/hien-thi?page=${status.index-1}">${status.index-1}</a></a>
        </c:forEach>
    </div>
</body>
</html>