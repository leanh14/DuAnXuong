
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<div class="container">

    <div class="row align-items-center">
        <h2 class="col-12 text-start">Quản Lý Ghe</h2>
        <div class="col-md-6  order-md-2">
            <div class="input-group">
                <form method="get" action="/ghe/tim-kiem">
                    <input   type="search" name="ten" class="form-control" placeholder="Tìm kiếm tên ghe..."/>
                    <span class="input-group-btn">
            <button type="submit" class="btn btn-primary">
                Tìm kiếm
            </button>
        </span>
                </form>
            </div>
        </div>
        <div class="col-md-6 text-start order-md-1">
            <button type="button" style="border-radius: 15px" class="btn btn-primary" >
                <a href="/ghe/trang-them" style="color: aliceblue">Thêm Ghe</a>
            </button>
        </div>
    </div>

    <br>


    <table class="table">
        <thead>
        <tr>
            <th scope="col">Ma</th>
            <th scope="col">ten phong</th>
            <th scope="col">ten loai</th>
            <th scope="col">Tenhang</th>
            <th scope="col">Ten ghe</th>
            <th scope="col">funtion</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listGhe.content}" var="g">
            <tr>

                <td>${g.ma}</td>
                <td>${g.phong.ten}</td>
                <td>${g.loaiGhe.tenloai}</td>
                <td>${g.tenhangghe}</td>
                <td>${g.tenghe}</td>
                <td>
                    <a href="/ghe/detail/${g.id}" class="btn btn-primary">Detail</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item">
                <c:forEach begin="1" end="${listGhe.totalPages}" varStatus="loop">
                    <a class="page-links" href="/ghe/hien-thi?page=${loop.begin + loop.count -2}">
                            ${loop.begin + loop.count - 1}
                    </a>
                </c:forEach>
            </li>
        </ul>
    </nav>
</div>
</body>
</html>
