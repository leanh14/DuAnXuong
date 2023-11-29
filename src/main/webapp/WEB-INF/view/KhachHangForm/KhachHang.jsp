<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>
<body class="container">
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Thêm khách hàng
</button>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm khách hàng</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form:form modelAttribute="KhachHang" action="/khachhang/add" method="post" class="form-horizontal" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="control-label col-sm-2">Mã Khách hàng</label>
                        <div class="col-sm-10">
                            <form:input path="ma" class="form-control"/>
                            <form:errors path="ma" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Tên khách hàng</label>
                        <div class="col-sm-10">
                            <form:input path="ten" class="form-control"/>
                            <form:errors path="ten" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Ngày sinh</label>
                        <div class="col-sm-10">
                            <form:input type="date" path="ngaySinh" class="form-control"/>
                            <form:errors path="ngaySinh" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Số điện thoại</label>
                        <div class="col-sm-10">
                            <form:input path="sdt"  class="form-control"/>
                            <form:errors path="sdt" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Địa chỉ</label>
                        <div class="col-sm-10">
                            <form:input path="diaChi" class="form-control"/>
                            <form:errors path="diaChi" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Thành phố</label>
                        <div class="col-sm-10">
                            <form:input path="thanhPho" class="form-control"/>
                            <form:errors path="thanhPho" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Quốc gia</label>
                        <div class="col-sm-10">
                            <form:input path="quocGia" class="form-control"/>
                            <form:errors path="quocGia" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Tài khoản</label>
                        <div class="col-sm-10">
                            <form:input path="taiKhoan" class="form-control"/>
                            <form:errors path="taiKhoan" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Email</label>
                        <div class="col-sm-10">
                            <form:input path="email" class="form-control"/>
                            <form:errors path="email" cssStyle="color: red"/>
                        </div>
                    </div>
                    <button type='submit' class='btn btn-primary'>Lưu</button>
                </form:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>
                <button type="submit"  class="btn btn-primary">Lưu</button>
            </div>
        </div>
    </div>
</div>
<h1 style="text-align: center">Danh sách khách hàng</h1>
<hr>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Mã</th>
        <th scope="col">Tên</th>
        <th scope="col">Giới tính</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Số điện thoại</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Thành phố</th>
        <th scope="col">Quốc gia</th>
        <th scope="col">Tài khoản</th>
        <th scope="col">Mật khẩu</th>
        <th scope="col">Email</th>
        <th scope="col">Chức năng</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${lstKhachHang.content}" var="kh" varStatus="stt">
        <tr>
            <td scope="row">${stt.index+1}</td>
            <td>${kh.ma}</td>
            <td>${kh.ten}</td>
            <td>${kh.gioiTinh}</td>
            <td>${kh.ngaySinh}</td>
            <td>${kh.sdt}</td>
            <td>${kh.diaChi}</td>
            <td>${kh.thanhPho}</td>
            <td>${kh.quocGia}</td>
            <td>${kh.taiKhoan}</td>
            <td>${kh.matKhau}</td>
            <td>${kh.email}</td>
            <td><a href="/khach-hang/detail/${kh.id}" class="btn btn-primary"> Chi Tiết</a></td>
            <td><a href="/khach-hang/delete/${kh.id}" class="btn btn-primary"> Xóa</a></td>

        </tr>
    </c:forEach>
    </tbody>
</table>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item">
            <c:forEach begin="1" end="${lstKhachHang.totalPages}" varStatus="loop">
                <a class="page-links" href="/khach-hang/hien-thi?page=${loop.begin+loop.count-2}">${loop.begin+loop.count-1}</a>
            </c:forEach>
        </li>
    </ul>

</nav>
</body>
<script>

    document.getElementById("form_create_khachhang")
        .addEventListener("submit", function (e){
            e.preventDefault();
            console.log("aaaaa");

            const ma = document.getElementById("form_create_ma").value;
            const ten = document.getElementById("form_create_ten_khach_hang").value;
            const gioiTinh = document.getElementById("form_create_gioi_tinh").value;
            const ngaySinh = document.getElementById("form_create_ngay_sinh").value;
            const sdt = document.getElementById("form_create_sdt").value;
            const diaChi= document.getElementById("form_create_dia_chi").value;
            const thanhPho= document.getElementById("form_create_thanh_pho").value;
            const quocGia=document.getElementById("form_create_quoc_gia").value;
            const taiKhoan = document.getElementById("form_create_tai_khoan").value;
            const matKhau = document.getElementById("form_create_mat_khau").value;
            const email = document.getElementById("form_create_email").value;


            const data = {
                ten:ten,
                ma: ma,
                gioiTinh:gioiTinh,
                ngaySinh:ngaySinh,
                sdt:sdt,
                diaChi:diaChi,
                thanhPho:thanhPho,
                quocGia:quocGia,
                taiKhoan:taiKhoan,
                matKhau:matKhau,
                email:email


            };
            fetch("http://localhost:8080/khachhang/add", {
                method: 'POST',
                body: JSON.stringify(data)
            }).then((res) => {
                console.log(res)
                if (res.status == 200) {
                    //
                }
            })

            console.log(ma,ten, gioiTinh, ngaySinh, sdt, diaChi,thanhPho,quocGia,taiKhoan,matKhau,email)

        });
</script>
</html>