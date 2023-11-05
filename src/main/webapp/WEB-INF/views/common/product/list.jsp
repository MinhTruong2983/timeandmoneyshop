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
    

        <link href="<c:url value ='/templates/css/section/sectionlist.css'/>" rel="stylesheet">


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


<!--  sectionlist -->

<section class="section_list section-padding " > 


<form:form action="" method="GET" class="col-md-12 ">
    <div class="m-3 d-flex align-items-center justify-content-center  ">
       <input name="name" class="me-2 rounded w-100px" placeholder="Name">
         <button type="submit"   class="btn btn-success">Search</button>
    </div>
  
</form:form>
         <div class="row">
          <c:forEach var="product" items="${page.content}">
          
  <div class="col-md-3 p-5"> <!-- Đặt chiều rộng của mỗi sản phẩm trong một dòng <c:url value='/templates/images/section3/${product.image}'/> -->

   <a href="/product/${product.watchid}">
   
   
   <article class="card">
  <img
    class="card__background"
    src="<c:url value ='/templates/images/section3/anh_list/${product.image}'/>"
    alt="Photo of Cartagena's cathedral at the background and some colonial style houses"
    width="1920"
    height="2193"
  />
  <div class="card__content | flow">
    <div class="card__content--container | flow">
      <h2 class="card__title">${product.name}</h2>
      
      <p class="card__description pt-3">
           ${product.description}
      </p>
         <p class="price">
        ${product.price}USD
      </p>
    </div>
    <button class="card__button ">Buy</button>
  </div>
</article>
   

  </a>
  </div>
  </c:forEach>
 </div>

  <div class="container mt-3 d-flex align-items-center justify-content-center">
    <div class="btn-group" role="group" aria-label="Page navigation">
        <a href="/product/list?p=0" class="btn btn-secondary ${page.number == 0 ? 'disabled' : ''}">First</a>
        <a href="/product/list?p=${page.number - 1}" class="btn btn-secondary ${!page.hasPrevious() ? 'disabled' : ''}">Previous</a>
        <a href="/product/list?p=${page.number + 1}" class="btn btn-secondary ${!page.hasNext() ? 'disabled' : ''}">Next</a>
        <a href="/product/list?p=${page.totalPages - 1}" class="btn btn-secondary ${page.number == page.totalPages - 1 ? 'disabled' : ''}">Last</a>
    </div>
</div>
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
                                <a href="#" class="social-icon-link">
                                    <span class="bi-twitter"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
                                    <span class="bi-apple"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
                                    <span class="bi-instagram"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
                                    <span class="bi-youtube"></span>
                                </a>
                            </li>

                            <li class="social-icon-item">
                                <a href="#" class="social-icon-link">
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
                        <a href="tel: 090-080-0760" class="site-footer-link">
                            033789JQK
                        </a>
                    </p>

                    <p class="text-white d-flex">
                        <a href="mailto:hello@company.com" class="site-footer-link">
                            ChuongToiChoi@gmail.com
                        </a>
                    </p>
                </div>
            </div>
        </div>

        <div class="site-footer-bottom">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-12 mt-5">
                        <p class="copyright-text">Bản quyền © 2036 Cá Nhân </p>
                    </div>

                    <div class="col-lg-8 col-12 mt-lg-5">
                        <ul class="site-footer-links">
                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Điều khoản&amp; Điều kiện</a>
                            </li>

                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Chính sách bảo mật</a>
                            </li>

                            <li class="site-footer-link-item">
                                <a href="#" class="site-footer-link">Thông tin phản hồi của bạn</a>
                            </li>
                        </ul>
                    </div>
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