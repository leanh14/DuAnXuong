<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 06/11/2023
  Time: 9:26 SA
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
    <%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">--%>
    <%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
    <%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <title>Document</title>
</head>
<body>

                <form:form modelAttribute="phim" action="/phim/add" method="post" class="form-horizontal" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="control-label col-sm-2">ma</label>
                        <div class="col-sm-10">
                            <form:input path="ma" class="form-control"/>
                            <form:errors path="ma" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">ten</label>
                        <div class="col-sm-10">
                            <form:input path="ten" class="form-control"/>
                            <form:errors path="ten" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">daodien</label>
                        <div class="col-sm-10">
                            <form:input path="daodien" class="form-control"/>
                            <form:errors path="daodien" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">dienvien</label>
                        <div class="col-sm-10">
                            <form:input path="dienvien" class="form-control"/>
                            <form:errors path="dienvien" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">theloai</label>
                        <div class="col-sm-10">
                            <form:select path="theloai">
                                <form:option value="kinhdi">Kinh di</form:option>
                                <form:option value="haikich">Hai kich</form:option>
                                <form:option value="hanhdong">Hanh dong</form:option>
                                <form:option value="timcam">Tinh cam</form:option>
                                <form:option value="khoahocvientuong">Khoa hoc vien tuong</form:option>
                            </form:select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">thoigian</label>
                        <div class="col-sm-10">
                            <form:input path="thoigian" class="form-control"/>
                            <form:errors path="thoigian" cssStyle="color: red"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">hinhanh</label>
                        <div class="col-sm-10">
                            <form:input type="file" path="hinhanhFile" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">Noi dung</label>
                        <div class="col-sm-10">
                            <form:input path="noidung" class="form-control"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2">NamSanXuat</label>
                        <div class="col-sm-10">
                            <form:input type="date" path="namsx" class="form-control"/>
                        </div>
                    </div>
                    <button type='submit' class='btn btn-primary'>Add</button>
                    <button type='button' class='btn btn-primary'><a href="/phim/hien-thi" style="color: white"1>return</a></button>
                </form:form>

<%--<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title" id="exampleModalLabel">Thêm voucher</h5>--%>
<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>

<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Thoát</button>--%>
<%--                <button type="submit"  class="btn btn-primary">Lưu</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</div>--%>
</body>
</html>
