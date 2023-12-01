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
    <script>
        function updateTotalPrice() {
            var soluong = document.getElementById("soluong").value;
            var gia = document.getElementById("gia").value;
            var totalPrice = soluong * gia;

            document.getElementById("totalPrice").innerHTML = totalPrice;
        }
    </script>
</head>
<body>
<form:form modelAttribute="giohangchitiet" action="/giohangchitiet/add" method="post" class="form-horizontal" enctype="multipart/form-data">
<div class="form-group">
    <label class="control-label col-sm-2">Xuất chiếu mã: ${maXuatChieu}</label>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" >Số lượng</label>
    <div class="col-sm-10">
        <form:input value="1" type="number" path="soluong" onChange="updateTotalPrice()" class="form-control"/>
    </div>
</div>

</div>
    <div class="form-group">
        <label class="control-label col-sm-2">Giá</label>
        <div class="col-sm-10">
            <form:input type="input" path="gia" id="gia"  class="form-control" value="${gia}"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">Tổng giá</label>
        <div class="col-sm-10">
            <div id="totalPrice"></div>
        </div>
    </div>

    <button type='submit' class='btn btn-primary'>Xác nhận</button>
</form:form>
</body>
</html>


