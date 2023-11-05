<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta charset="ISO-8859-1">
 <link href="<c:url value ='/templates/css/bootstrap.min.css'/>" rel="stylesheet">

    <link href="<c:url value ='/templates/css/bootstrap-icons.css'/>" rel="stylesheet">


    <link href="<c:url value ='/templates/css/templatemo-festava-live.css'/>"rel="stylesheet">
    

     <link href="<c:url value ='/templates/css/section/section3.css'/>" rel="stylesheet">
    
  

<title>Đồng Hồ T & M</title>
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
         
            
<nav class="navbar navbar-expand-lg">
            <div class="container">
               <h2> 
               <a class="navbar-brand" href="/home/index">
                    T & M
                </a>
                </h2>


                <button class="" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

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

   <section class="hero-section about-section_1" id="section_1">
            <div class="container d-flex justify-content-center align-items-center">
                <div class="row">
                    <div class="col-12 mt-auto mb-5 text-center">
                        <h3 class="text-white mb-5">Chúng Tôi Không Chỉ Bán Đồng Hồ, Chúng Tôi Bán Sự Tinh Tế Của Thời Gian</h3>
                          <small>“Thời gian là ngôn ngữ của phong cách. Chào mừng bạn đến với cửa hàng đồng hồ chất lượng cao của chúng tôi.“</small>        
                    </div>         
                </div>
            </div>

            <div class="video-wrap">
                <video autoplay="" loop="" muted="" class="custom-video" poster="">
                    <source src=" <c:url value ='/templates/video/trangchu.mp4'/> " type="video/mp4">

                </video>
            </div>
        </section>


<!--  section2 -->
   <jsp:include page="section/section2.jsp" />


<!--  section3 -->

   <jsp:include page="section/section3.jsp" />


   
<!--  section4 -->

<section class=" section_4" >

 
             <jsp:include page="section/ngang.jsp" />
            
       
 </section>

<!--  section5 -->

   <jsp:include page="section/section5.jsp" />
   
   
<!--  section6 -->

<section class=" section_6" >

            
            
             <jsp:include page="section/chuyendong.jsp" />

 </section>
 
 
 
 
<!-- footer -->


<footer class="site-footer">
        <div class="site-footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12">
                        <h2 class="text-white mb-lg-0">T&M(Time is Money)</h2>
                    </div>

                    <div class="col-lg-6 col-12 d-flex justify-content-lg-end align-items-center">
                        <ul class="social-icon d-flex justify-content-lg-end">
                            <li class="social-icon-item">
                                <a href="https://www.nimo.tv/thaygiaoba" class="social-icon-link">
                                    <span class="bi-twitter"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="https://www.nimo.tv/thaygiaoba" class="social-icon-link">
                                    <span class="bi-apple"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="https://www.nimo.tv/thaygiaoba" class="social-icon-link">
                                    <span class="bi-instagram"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="https://www.nimo.tv/thaygiaoba" class="social-icon-link">
                                    <span class="bi-youtube"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="https://www.nimo.tv/thaygiaoba" class="social-icon-link">
                                    <span class="bi-pinterest"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">


                <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">

                    <p class="text-white d-flex mb-1">
                        <a href="" class="site-footer-link">
                            033345893*( gọi cho tôi bất cứ khi nào bạn thấy cần:))
                        </a>
                        
                    </p>
                    <p>
                    <a href="" class="site-footer-link">
                           nhớ để lại 1 like ,share để giúp mình có thêm động lực nhé :))!
                        </a>
                    </p>

                    <p class="text-white d-flex">
                        <a href="" class="site-footer-link">
                          minhtruong2983@gmail.com
                        </a>
                    </p>
                </div>
            </div>
        </div>

       
    </footer>
    
 <!-- JAVASCRIPT FILES -->
    <script src=" <c:url value = '/templates/js/jquery.min.js'/>"></script>
    <script src=" <c:url value = '/templates/js/bootstrap.min.js'/>"></script>
    <script src=" <c:url value = '/templates/js/jquery.sticky.js'/>"></script>
    <script src=" <c:url value = '/templates/js/click-scroll.js'/>"></script>
    <script src=" <c:url value = '/templates/js/custom.js'/>"></script>
    

</body>
</html>