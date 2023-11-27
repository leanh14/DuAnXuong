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
<style>
    /* Thêm border và căn giữa cho container */
    .container-fluid {
        border: 2px solid #ddd; /* Màu và độ rộng của border */
        text-align: center; /* Căn giữa nội dung trong container */
        padding: 5px; /* Khoảng cách nội dung từ border */
        background: #E8E8E8;
    }
    .menu{
        display: flex;
        gap: 20px;
    }

    .row {
        display: flex;
        justify-content: space-between; /* Căn đều các cột */
        align-items: center; /* Căn giữa theo chiều dọc */
    }


</style>

<div class= "container-fluid">
    <div class= "row">
        <div class ="col-2 ">
            <img src="/images/logo/logoChinh.png" style="border-radius: 30px" alt="" srcset="" width="60px" height="60px" >
        </div>
        <div class ="col-5 menu">
            <a href="" style="color: black">Trang chu</a>
            <a href="" style="color: black">Lien he</a>
            <a href="" style="color: black">Danh sach</a>
            <a href="" style="color: black">Lich chieu</a>
        </div>
        <div class ="col-3 search">
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-light" type="submit"><img src="/images/logo/timkiem.jpg" width="40px" height="40px" ></button>
            </form>
        </div>
        <div class ="col-2 dangnhap">
            <button class="btn btn-primary" type="button">Dang ky</button>
            <button class="btn btn-primary" type="button">Dang nhap</button>
        </div>
    </div>
</div>

</body>
</html>