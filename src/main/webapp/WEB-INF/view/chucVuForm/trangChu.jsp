<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <title>Chuc Vu</title>
</head>
<body class="container">
  <h2>Helo ban</h2>

  <form:form modelAttribute="chucVu" action="/chuc-vu/add" method="post">
      <div class="form-group">
          <label>Ma</label>
          <form:input path="ma" cssClass="form-control" />
      </div>

      <div class="form-group">
          <label>Ten</label>
          <form:input path="ten" cssClass="form-control" />

      </div>

      <button type="submit" class="btn btn-primary">Add</button>
  </form:form>
  <h1 style="text-align: center">Danh sach chucvu</h1>
  <table class="table">
      <thead>
      <tr>
          <th scope="col">Id</th>
          <th scope="col">Ma</th>
          <th scope="col">Ten </th>

      </tr>
      </thead>
      <tbody>


      <c:forEach items="${listCv}" var="nv">
          <tr>
              <td>${nv.id}</td>
              <td>${nv.ma}</td>
              <td>${nv.ten}</td>
              <td>
                  <a href="/chuc-vu/delete/${nv.id}" class="btn btn-primary">Delete</a>
                  <a href="/chuc-vu/detail/${nv.id}" class="btn btn-primary">Detail</a>
              </td>
          </tr>
      </c:forEach>

      </tbody>
  </table>

  <div>
      <c:forEach begin="1" end="${totalPage}" varStatus="status">
          <a><a href="/chuc-vu/hien-thi?page=${status.index-1}">${status.index-1}</a></a>
      </c:forEach>
  </div>
</body>
</html>