<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstr   ap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <title>Home</title>
</head>
<body class="container">

<%--<div class="input-group">--%>
<%--    <form method="get" action="/voucher/tim-kiem">--%>
<%--        <input type="search" name="tenVoucher" class="form-control" placeholder="Tim kiem ten voucher....."/>--%>
<%--        <span class="input-group-btn">--%>
<%--                <button type="submit" class="btn btn-primary">Tim kiem</button>--%>
<%--            </span>--%>
<%--    </form>--%>
<%--</div>--%>
<button type="button"  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Thêm VeDat
</button>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm vedat</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form:form modelAttribute="veDat" action="/ve-dat/add" method="post">
                    <div class="form-group">
                        <label>Ten NhanVien</label>
                        <form:select path="nhanVien.id" class="form-control">
                            <c:forEach var="nv" items="${listNV}">
                                <form:option value="${nv.id}">${nv.hoTen}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Ten Phim</label>
                        <form:select path="veXemPhim.id" class="form-control">
                            <c:forEach var="cv" items="${listVXP}">
                                <form:option value="${cv.id}">${cv.tenPhim}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Mã</label>
                        <form:input path="ma" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label>Ngày Tao</label>
                        <form:input path="ngayTao" type="date" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Ngày Thanh Toan</label>
                        <form:input path="ngayThanhToan" type="date" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Tong tien</label>
                        <form:input path="tongTien" cssClass="form-control" />
                    </div>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>
            </div>
        </div>
    </div>
</div>

<h1 style="text-align: center">Danh sách Voucher</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Ten NhanVien</th>
        <th scope="col">Ten Phim</th>
        <th scope="col">Ma</th>
        <th scope="col">Ngay tao</th>
        <th scope="col">Ngay thanhToan</th>
        <th scope="col">Tong tien</th>
        <th scope="col">action</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${listVD}" var="vd">
        <tr>
            <td>${vd.id}</td>
            <td>${vd.nhanVien.hoTen}</td>
            <td>${vd.veXemPhim.tenPhim}</td>
            <td>${vd.ma}</td>
            <td>${vd.ngayTao}</td>
            <td>${vd.ngayThanhToan}</td>
            <td>${vd.tongTien}</td>

            <td>
                <a href="/ve-dat/delete/${vd.id}" class="btn btn-primary">Delete</a>
                <a href="/ve-dat/detail/${vd.id}" class="btn btn-primary">Detail</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>

<div>
    <c:forEach begin="1" end="${totalPage}" varStatus="status">
        <a><a href="/ve-dat/hien-thi?page=${status.index-1}">${status.index-1}</a></a>
    </c:forEach>
</div>
</body>
</html>