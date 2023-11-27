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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<%--<div class="modal" tabindex="-1">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title">Modal title</h5>--%>
<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <p>Modal body text goes here.</p>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                <button type="button" class="btn btn-primary">Save changes</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<form:form modelAttribute="phim" action="/phim/update/${phim.id}" method="post" class="form-horizontal" enctype="multipart/form-data">
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
    <button type='submit' class='btn btn-primary'>update</button>
    <button type='button' class='btn btn-primary'><a href="/phim/hien-thi" style="color: white"1>return</a></button>
</form:form>
</body>
</html>
