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
                <h5 class="modal-title" id="exampleModalLabel">Thêm Tầng</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <%--@elvariable id="tang" type=""--%>
                <form:form id="form_create_voucher" modelAttribute="tang" action="/tang/add" method="post">
                    <div class="form-group">
                        <label>Mã Tầng</label>
                        <form:input path="maTang" id="form_create_ma" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Tên Tầng</label>
                        <form:input path="tenTang" id="form_create_ten_tang" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Số Phòng</label>
                        <form:input path="soPhong" id="form_create_so_phong" cssClass="form-control" />
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
<h1 style="text-align: center">Danh sách tầng</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Mã Tầng</th>
        <th scope="col">Tên Tầng</th>
        <th scope="col">Số Phòng</th>
        <th scope="col">action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="t">
        <tr>
            <td>${t.id}</td>
            <td>${t.maTang}</td>
            <td>${t.tenTang}</td>
            <td>${t.soPhong}</td>
            <td>
                <a href="/tang/detail/${t.id}" class="btn btn-primary">Detail</a>
                <a href="/tang/delete/${t.id}" class="btn btn-primary">Delete</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>

<div>
    <c:forEach begin="1" end="${totalPage}" varStatus="status">
        <a><a href="/tang/hien-thi?page=${status.index-1}">${status.index-1}</a></a>
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