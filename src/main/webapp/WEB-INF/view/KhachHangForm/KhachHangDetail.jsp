<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Khách Hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<form:form modelAttribute="KhachHang" method="post" action="/khachhang/update/${khachHang.id}">
    <label>Mã khách hàng</label>
    <form:input path="ma"></form:input>

    <label>Tên khách hàng</label>
    <form:input path="ten"></form:input>

    <label>Giới tính:</label>
    <form:radiobutton path="gioiTinh" id="id1" value="Nam"></form:radiobutton>
    <form:radiobutton path="gioiTinh" id="id2" value="Nu"></form:radiobutton>

    <label> Ngày sinh:</label>
    <form:input path="ngaySinh"></form:input>

    <label> Sđt</label>
    <form:input path="sdt"></form:input>

    <label>Địa chỉ</label>
    <form:input path="diaChi"></form:input>

    <label>Thành phố</label>
    <form:input path="thanhPho"></form:input>

    <label>Quốc gia</label>
    <form:input path="quocGia"></form:input>

    <label>Tài khoản</label>
    <form:input path="taiKhoan"></form:input>

    <label>Email</label>
    <form:input path="email"></form:input>
    <button type="submit" class="btn btn-primary" style="">Sửa</button>
</form:form>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>