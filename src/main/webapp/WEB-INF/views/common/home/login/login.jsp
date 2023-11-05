<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="<c:url value ='/templates/css/templatemo-festava-live.css'/>"rel="stylesheet">
    
    
     <style>
        body {
            background-image: url('<c:url value ='/templates/images/nen/nen-2-cuahang.jpg'/>'); /* Đường dẫn đến tấm ảnh */
            background-size: cover; /* Đảm bảo rằng hình ảnh sẽ che phủ toàn bộ background */
            background-repeat: no-repeat; /* Ngăn chặn việc lặp lại hình ảnh */
        }
        
        .transparent-bg {
            background-color: rgba(255, 255, 255, 0.3); /* Giá trị alpha 0.7 làm cho nền trong suốt */
        }
         .custom-div {
            margin-top: 150px; /* Điều chỉnh giá trị này để tăng hoặc giảm khoảng cách từ trên xuống */
        }
    </style>
    
    
<title>T & M : Login Admin</title>
</head>

<body >

   <header class="site-header  py-3 bg-warning ">
                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-12 col-12 d-flex flex-wrap">
                            <p class="d-flex me-4 mb-0">
                                <a href="/account/login">
                                <i class="bi-person custom-icon me-2"></i>
                                 </a>
                                <strong class="text-dark">Welcome ${user} to T & M</strong>
                            </p>
                        </div>

                    </div>
                </div>
            </header>
            
            <nav class="navbar navbar-expand-lg bg-warning ">
            <div class="container">
               <h2> 
               <a class="navbar-brand" href="/home/index">
                    T & M
                </a>
                </h2>
                <div class="collapse navbar-collapse " id="navbarNav">
                    <ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="/home/index">Trang chủ</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="/product/list">Danh mục</a>
                        </li>

                        
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="/product/list">Tìm hiểu</a>
                        </li>
                    </ul>

                    <a href="/cart/view" class="btn custom-btn d-lg-block d-none">Giỏ Hàng</a>
                </div>
            </div>
        </nav>
            



    <div class="container custom-div ">
        <div class="row justify-content-center">
            <div class="col-md-6 ">
                <div class="card shadow pt-3 transparent-bg">
               
                    <div class="card-body">
                        <form action="/account/login" method="post">
                            <div class="mb-3">
                                
                             <input type="text" placeholder="Tài khoản" class="form-control" id="username" name="username" required>
                            </div>
                            <div class="mb-3">
                               
                                <input type="password" placeholder="Mật khẩu" class="form-control" id="password" name="password" required>
                              
                             </div>
                            <div class="row">
                           <div class="col-md-6 mb-3">
                            <button type="submit" class="btn    text-white fw-bold w-100 " style="background-color: #00FF00;">Đăng nhập</button>
                           </div>
                          <div class="col-md-6 mb-3">
                          <a href="/home/index" class="btn btn-primary text-white fw-bold w-100">Trở về</a>
                           </div>
                          </div>

                 
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    


    <!-- Link đến Bootstrap JS và Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
