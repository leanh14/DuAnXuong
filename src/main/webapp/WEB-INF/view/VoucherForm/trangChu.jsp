<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstr   ap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <title>Home</title>
</head>
<body class="container">

<%--    <div class="input-group">--%>
<%--        <form method="get" action="/voucher/tim-kiem">--%>
<%--            <input type="search" name="ma" class="form-control" placeholder="Tim kiem ma voucher....."/>--%>
<%--            <span class="input-group-btn">--%>
<%--                <button type="submit" class="btn btn-primary">Tim kiem</button>--%>
<%--            </span>--%>
<%--        </form>--%>
<%--    </div>--%>
<button type="button"  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Thêm voucher
</button>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm voucher</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form:form id="form_create_voucher" modelAttribute="voucher" action="/voucher/add" method="post">
                    <div class="form-group">
                        <label>Mã</label>
                        <form:input path="ma" id="form_create_ma" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Ten VXP</label>
                        <form:select path="veXemPhim.id" id="form_create_ten_phim" class="form-control">
                            <c:forEach var="cv" items="${listVXP}">
                                <form:option value="${cv.id}">${cv.tenPhim}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Ten voucher</label>
                        <form:input path="tenVoucher" id="form_create_ten_voucher" cssClass="form-control" />

                    </div>
                    <div class="form-group">
                        <label>Ngày BD</label>
                        <form:input path="ngayBatDau" id="form_create_startdate" type="date" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Ngày KT</label>
                        <form:input path="ngayKetThuc"  id="form_create_enddate" type="date" cssClass="form-control" />
                    </div>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>
                <button type="submit"  class="btn btn-primary">Lưu</button>
            </div>
        </div>
    </div>
 </div>


</div>
<h1 style="text-align: center">Danh sách Voucher</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Ma</th>
        <th scope="col">Ten Phim</th>
        <th scope="col">Ten</th>
        <th scope="col">NgayBD</th>
        <th scope="col">NgayKT</th>
        <th scope="col">action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listVC}" var="vc">
        <tr>
            <td>${vc.id}</td>
            <td>${vc.ma}</td>
            <td>${vc.veXemPhim.tenPhim}</td>
            <td>${vc.tenVoucher}</td>
            <td>${vc.ngayBatDau}</td>
            <td>${vc.ngayKetThuc}</td>

            <td>
                <a href="/voucher/delete/${vc.id}" class="btn btn-primary">Delete</a>
                <a href="/voucher/detail/${vc.id}" class="btn btn-primary">Detail</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>

<div>
    <c:forEach begin="1" end="${totalPage}" varStatus="status">
        <a><a href="/voucher/hien-thi?page=${status.index-1}">${status.index-1}</a></a>
    </c:forEach>
</div>
</body>

<%--<script>--%>

<%--    document.getElementById("form_create_voucher")--%>
<%--        .addEventListener("submit", function (e){--%>
<%--            e.preventDefault();--%>
<%--            console.log("aaaaa");--%>

<%--            const ma = document.getElementById("form_create_ma").value;--%>
<%--            const phim = document.getElementById("form_create_ten_phim").value;--%>
<%--            const voucher = document.getElementById("form_create_ten_voucher").value;--%>
<%--            const startdate = document.getElementById("form_create_startdate").value;--%>
<%--            const enddate = document.getElementById("form_create_enddate").value;--%>

<%--            const data = {--%>
<%--                veXemPhim: phim,--%>
<%--                ma: ma,--%>
<%--                tenVoucher: voucher,--%>
<%--                ngayBatDau: startdate,--%>
<%--                ngayKetThuc: enddate--%>
<%--            };--%>
<%--            fetch("http://localhost:8080/voucher/add", {--%>
<%--                method: 'POST',--%>
<%--                body: JSON.stringify(data)--%>
<%--            }).then((res) => {--%>
<%--                console.log(res)--%>
<%--                if (res.status == 200) {--%>
<%--                    //--%>
<%--                }--%>
<%--            })--%>

<%--            console.log(ma, phim, voucher, startdate, enddate)--%>

<%--        });--%>
<%--</script>--%>
</html>