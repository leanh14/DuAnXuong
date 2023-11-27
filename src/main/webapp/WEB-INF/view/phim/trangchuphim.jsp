<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 06/11/2023
  Time: 9:04 SA
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="row align-items-center">
        <h2 class="col-12 text-start">Quản Lý Phim</h2>
        <div class="col-md-6  order-md-2">
            <div class="input-group">
                <form method="get" action="/phim/tim-kiem">
                    <input  type="search" name="ten" class="form-control" placeholder="Tìm kiếm tên phim..."/>
                    <span class="input-group-btn">
            <button type="submit" class="btn btn-primary">
                Tìm kiếm
            </button>
        </span>
                </form>
            </div>
        </div>
        <div class="col-md-6 text-start order-md-1">
            <button type="button" style="border-radius: 15px" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" >
                <a href="/phim/trang-them"  style="color: aliceblue">Thêm Phim</a>
            </button>
        </div>
    </div>
    <br>
    <table class="table">
        <thead>
        <tr>

            <th scope="col">Ma</th>
            <th scope="col">Ten</th>
            <th scope="col">The loai</th>

            <th scope="col">Hinh anh</th>
            <th scope="col">funtion</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listphim.content}" var="p">
            <tr>

                <td>${p.ma}</td>
                <td>${p.ten}</td>
                <td>${p.theloai}</td>
                <td><img src="/${p.hinhanh}" alt="Hinh anh" width="50px" height="50px" /></td>
                <td><a href="/phim/delete/${p.id}" class="btn btn-primary">Xoa</a>
                    <a href="/phim/detail/${p.id}" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Detail</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item">
                <c:forEach begin="1" end="${listphim.totalPages}" varStatus="loop">
                    <a class="page-links" href="/phim/hien-thi?page=${loop.begin + loop.count -2}">
                            ${loop.begin + loop.count - 1}
                    </a>
                </c:forEach>
            </li>
        </ul>
    </nav>
</div>
</body>
</html>
