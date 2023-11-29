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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <title>Thẻ thành viên</title>
</head>
<body class="container">
<!-- Button trigger modal -->
<div class="input-group">
    <form method="get" action="/thethanhvien/search">
        <span class="input-group-btn">
            <button type="submit" class="btn btn-primary">
                Tìm kiếm
            </button>
                    <input type="search" name="ten" class="form-control">
        </span>
    </form>
</div>
<br>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Thêm thẻ thành viên
</button>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Thêm thẻ thành viên</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form:form modelAttribute="theThanhVien" action="/thethanhvien/add" method="post">
                    <div class="form-group">
                        <div class="col-sm-10">
                            <label>Mã thẻ</label>
                            <form:input path="ma"></form:input>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10">
                            <label>Tên thẻ</label>
                            <form:input path="ten"></form:input>
                        </div>
                    </div>  <div class="form-group">
                    <div class="col-sm-10">
                        <label>Loại thẻ</label>
                        <form:input path="loai" ></form:input>
                    </div>
                </div>
                    <button type="submit" class="btn btn-primary">Lưu</button>
                </form:form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>
            </div>
        </div>
    </div>
</div>
<h1 style="text-align:center "></h1>
<hr>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Mã thẻ</th>
        <th scope="col">Tên thẻ</th>
        <th scope="col">Loại thẻ</th>
        <th scope="col">Chức năng</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${lstThe.content}" var="the" varStatus="stt">
        <tr>
            <td scope="row">${stt.index+1}</td>
            <td>${the.ma}</td>
            <td>${the.ten}</td>
            <td>${the.loai?'Vip':'Thường'}</td>
            <td><a href="/the-thanh-vien/detail/${the.id}" class="btn btn-primary">Chi Tiết</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item">
            <c:forEach begin="1" end="${lstThe.totalPages}" varStatus="loop">
                <a class="page-links" href="/the-thanh-vien/hien-thi?page=${loop.begin+loop.count-2}">${loop.begin+loop.count-1}</a>
            </c:forEach>
        </li>
    </ul>
</nav>
</body>
</html>