<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstr   ap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <title>Home</title>
</head>
<body class="container">

<button type="button"  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Thêm Xuat Chieu
</button>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm Xuat Chieu</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form:form modelAttribute="xuatChieu" action="/xuatchieu/add" method="post">
                    <div class="form-group">
                        <label>Mã</label>
                        <form:input path="ma" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Ten Rap</label>
                        <form:select path="rap.id" class="form-control">
                            <c:forEach var="r" items="${listRap}">
                                <form:option value="${r.id}">${r.ten}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Ten Phim</label>
                        <form:select path="phim.id" class="form-control">
                            <c:forEach var="p" items="${listPhim}">
                                <form:option value="${p.id}">${p.ten}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Ten Phong</label>
                        <form:select path="phong.id" class="form-control">
                            <c:forEach var="c" items="${listPhong}">
                                <form:option value="${c.id}">${c.tenPhong}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>
                    <div class="form-group">
                        <label>Ten Rap</label>
                        <form:select path="tang.id" class="form-control">
                            <c:forEach var="t" items="${listTang}">
                                <form:option value="${t.id}">${t.tenTang}</form:option>
                            </c:forEach>
                        </form:select>
                    </div>

                    <div class="form-group">
                        <label>Ngày Chieu</label>
                        <form:input path="ngayChieu" type="date" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Gia</label>
                        <form:input path="gia" type="text" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>So Luong</label>
                        <form:input path="soluong" cssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label>TrangThai</label>
                        <form:radiobutton path="trangThai"  value="0"/>Hoat dong
                        <form:radiobutton path="trangThai"  value="1"/>Khong hoat dong
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

<h1 style="text-align: center">Danh sách Xuat Chieu</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>

        <th scope="col">Ma</th>
        <th scope="col">Ten Rap</th>
        <th scope="col">Ten Phim</th>
        <th scope="col">Ten Phong</th>
        <th scope="col">Ten Tang</th>
        <th scope="col">Ngay Chieu</th>
        <th scope="col">Gia</th>
        <th scope="col">So Luong</th>
        <th scope="col">Trang Thai</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listXC}" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.ma}</td>
            <td>${c.rap.ten}</td>
            <td>${c.phim.ten}</td>
            <td>${c.phong.tenPhong}</td>
            <td>${c.tang.tenTang}</td>
            <td>${c.ngayChieu}</td>
            <td>${c.gia}</td>
            <td>${c.soluong}</td>
            <td>${c.trangThai == 0 ? "Hoat dong" : "Khong hoat dong"}</td>

            <td>
                <a href="/xuatchieu/detail/${c.id}" class="btn btn-primary">Detail</a>
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>

<div>
    <c:forEach begin="1" end="${totalPage}" varStatus="status">
        <a><a href="/xuatchieu/hien-thi?page=${status.index-1}">${status.index-1}</a></a>
    </c:forEach>
</div>
</body>
</html>