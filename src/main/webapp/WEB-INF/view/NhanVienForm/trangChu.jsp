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
    Thêm NhanVien
</button>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm NhanVien</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
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
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>
            </div>
        </div>
    </div>
</div>

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