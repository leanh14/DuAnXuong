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
    <br>
        <c:forEach items="${listphim}" var="p">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">${p.ten}</h5>
                        <p class="card-text">${p.theloai}</p>
                        <a href="#" class="btn btn-primary">them vao gio hang</a>
                    </div>
                </div>
        </c:forEach>


</body>
</html>
