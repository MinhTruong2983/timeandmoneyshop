
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link href="<c:url value ='/templates/css/templatemo-festava-live.css'/>"rel="stylesheet">
    
    <title>T & M :Product Details</title>
</head>
<body>
<header class="site-header  py-3 bg-warning ">
                <div class="container">
                    <div class="row">
                        
                        <div class="col-lg-12 col-12 d-flex flex-wrap">
                            <p class="d-flex me-4 mb-0">
                                <a href="/account/login">
                                <i class="bi-person custom-icon me-2"></i>
                                 </a>
                                <strong class="text-dark">Welcome to T & M</strong>
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
            
    <div class="container mt-5">
        <div class="row">
            <!-- Phần hiển thị ảnh sản phẩm -->
            <div class="col-lg-6 mb-4">
                <img src="<c:url value='/templates/images/section3/anh_list/${product.image}'/>"
                    class="img-fluid rounded" style="height: 500px" width="1000px" alt="Product Image">
            </div>
            <!-- Phần hiển thị chi tiết sản phẩm -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">${product.name}</h4>
                        <p class="card-text fw-light">${product.description}</p>
                        <h5 class="card-text bg-light text-danger fw-bolder pt-2 pb-2 ">${product.price}  USD</h5>


                        <form action="/product/add/${product.watchid}" class="mb-3">
                            <div class="form-group">
 
                          <div class="row">
                           <div class="col-6">
                            <p class=" fw-bolder ">Số lượng:</p>
                             </div>
                             <div class="col-6">
                             <input type="number" id="quantity" name="quantity" value="1" min="1" class="form-control"
                                    required>
                             </div>
                             </div>
                             </div>
                             
                            <div class="row bg-light">
                           <div class="col-6">
                            <p class=" fw-bolder font-weight-bold">Thương Hiệu</p>
                             </div>
                             <div class="col-6">
                            <p class="  fw-normal">Rolex</p>
                            
                             </div>
                             </div>
                             
                              <div class="row">
                           <div class="col-6">
                            <p class=" fw-bolder font-weight-bold">Đối tượng sử dụng</p>
                             </div>
                             <div class="col-6">
                            <p class="  fw-normal">Nam</p>
                            
                             </div>
                             </div> 
                             
                                <div class="row bg-light">
                           <div class="col-6">
                            <p class=" fw-bolder font-weight-bold">Dòng máy</p>
                             </div>
                             <div class="col-6">
                            <p class="  fw-normal">Cơ/Automatic</p>
                            
                             </div>
                             </div>
                               
                            <div class="row">
                           <div class="col-6">
                            <p class=" fw-bolder font-weight-bold">Chất liệu dây</p>
                             </div>
                             <div class="col-6">
                            <p class="  fw-normal">Dây kim loại</p>
                            
                             </div>
                             </div>  
                             
                                <div class="row bg-light">
                           <div class="col-6">
                            <p class=" fw-bolder font-weight-bold">Chất liệu kính</p>
                             </div>
                             <div class="col-6">
                            <p class="  fw-normal">Kính Sapphire</p>
                            
                             </div>
                             </div>        
                                <div class="row ">
                           <div class="col-6">
                            <p class=" fw-bolder font-weight-bold">Chất liệu vỏ</p>
                             </div>
                             <div class="col-6">
                            <p class=" fw-normal ">Vỏ thép không gỉ</p>
                            
                             </div>
                             </div>        

                            <button type="submit" class="btn btn-warning mt-2 text-white fw-normal">
                            <i class="fas  fa-shopping-cart"></i> Thêm vào giỏ hàng
                            </button>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Link Bootstrap JS and Popper.js (if needed) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
