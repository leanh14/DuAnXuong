<!doctype html>
<html lang="en">
<head>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">--%>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <title>Document</title>
        </head>
        <body class="container">
        <%--<form action="/khach-hang/search" method="get">--%>
<%--    <input name="keyword">--%>
<%--    <button type="submit">Tim Kiem</button>--%>
<%--</form>--%>
<%--@elvariable id="phong" type=""--%>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Thêm Phòng
</button>
<div class="modal" id="exampleModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm Phòng</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form:form modelAttribute="phong" id="form_create_phong" action="/phong/add" method="post">
                    <div class="mb-3">
                        <label class="form-label" >ID Tầng</label>
                        <form:select path="Tang.id" id="form_create_ten_tang">
                            <c:forEach items="${listTang}" var="t">
                                <option value="${t.id}">${t.tenTang}</option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Mã Phòng</label>
                        <form:input path="ma" id="form_create_ma" class="form-control"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Tên Phòng</label>
                        <form:input path="ten" id="form_create_ten_phong" class="form-control"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Loại Phòng</label>
                        <form:input path="loaiPhong" id="form_create_loaiPhong" class="form-control"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Số Chỗ Ngồi </label>
                        <form:input path="soChoNgoi" id="form_create_soChoNgoi" class="form-control"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Trạng Thái</label>
                        <form:radiobutton path="trangThai" value="1"/>1
                        <form:radiobutton path="trangThai" value="0"/>0
                    </div>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<h1 style="align-content: center">Danh sách phòng</h1>
<table class="table">
    <thead>
    <th>#</th>
    <th>ID</th>
    <th>Tên Tầng</th>
    <th>Mã Phòng</th>
    <th>Tên Phòng</th>
    <th>Loại Phòng</th>
    <th>Số Chỗ Ngồi</th>
    <th>Trạng Thái</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${listp}" var="p" varStatus="i">
        <tr>
            <td>${i.index+1}</td>
            <td>${p.id}</td>
            <td>${p.tang.tenTang}</td>
            <td>${p.ma}</td>
            <td>${p.ten}</td>
            <td>${p.loaiPhong}</td>
            <td>${p.soChoNgoi}</td>
            <td>${p.trangThai}</td>
            <td>
                <a href="/phong/detail/${p.id}" class="btn btn-primary">Detail</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<c:forEach begin="1" end="${totalPage}" varStatus="o">
    <a href="/phong/hien-thi?num=${o.index-1}">${o.index-1}</a>
</c:forEach>
</body>
<script>

    document.getElementById("form_create_phong")
        .addEventListener("submit", function (e){
            e.preventDefault();
            console.log("aaaaa");

            const ma = document.getElementById("form_create_ma").value;
            const Tentang = document.getElementById("form_create_tenTang").value;
            const Tenphong = document.getElementById("form_create_tenPhong").value;
            const loaPhong = document.getElementById("form_create_loaiPhong").value;
            const soChoNgoi = document.getElementById("form_create_soChoNgoi").value;
            const trangThai = document.getElementById("form_create_trangThai").value;

            const data = {
                phong: phong,
                ma: ma,
                tenTang: tenTang,
                Tenphong: Tenphong,
                loaPhong: loaPhong,
                soChoNgoi: soChoNgoi,
                ngayKetThuc: enddate,
                trangThai: trangThai

            };
            fetch("http://localhost:8080/phong/add", {
                method: 'POST',
                body: JSON.stringify(data)
            }).then((res) => {
                console.log(res)
                if (res.status == 200) {
                    console.log("Thêm phòng thành công")
                }
            })

            console.log(ma,Tentang,Tenphong,loaPhong,soChoNgoi,trangThai)

        });
</script>
</html>