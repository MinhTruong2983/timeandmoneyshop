<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="<c:url value ='/templates/css/templatemo-festava-live.css'/>"rel="stylesheet">
    
<title>T & M : Giỏ hàng</title>
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
            

   
    
    <!-- form -->
    <div class="container mt-3  ">
        <div class="row justify-content-center ">
      <div class="col-md-6 shadow">
      <form:form action="/order" modelAttribute="khachhang" >
               
        <table class="table">
          
            <tbody>
                <c:forEach var="item" items="${cart.items}">
                    <tr>
                        <td><img src="<c:url value ='/templates/images/section3/anh_list/${item.image}'/>" alt="Product Image" width="50"></td>
                        <td>${item.name}</td>
                        <td>${item.qty}</td>
                        <td>${item.price * item.qty} USD</td>
                        <td><a href="/product/delete/${item.id}" class="btn btn-danger btn-sm">Xóa</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
              
              
               <div class="row">
                           <div class="col-6">
                            <p class="fw-bold">Tổng thanh toán: </p>
                             </div>
                             <div class="col-6">
                            <p class="fw-bold text-danger">${totalAmount} USD</p>
                            
                             </div>
                             </div>  
 
               <hr>
                   
                <div class="row">
                <div class="col-6">
                <form:input path="fullName" class="form-control" placeholder="Nhập họ và tên" required="required"/>
                </div>
                <div class="col-6">
                <form:input path="phoneNumber" class="form-control" placeholder="Nhập số điện thoại" required="required"/>
                </div>
                </div>
                               
                <div class="form-group mt-2">
                  <form:input type="email" class="form-control" path="email" placeholder="Email" required="required"/>
                </div>
                    <hr>
                    
                <p class="mt-2 fw-bold">Nhập chính xác địa chỉ để được giao hàng chính xác nhé!</p>
                    
                    <div class="form-group">
                  <form:input class="form-control" path="address" placeholder="Nhập địa chỉ" required="required"/>
                   </div>
                   
                    <div class="form-group mt-2">
                 <form:textarea class="form-control" path="note" rows="3" placeholder="Ghi chú thêm (nếu có..)"></form:textarea>
                    </div>
                     <hr>
                    <p class="mt-2 fw-bold"> Mã Giảm:</p>
                    
                      <div class="mt-2">
                    <form:input class="form-control" path="discountCode" placeholder="Nhập mã giảm giá (nếu có..)"/>
                     <a href="/cart/gmail">Nhận mã giảm giá</a>
                 
                     </div> 
                     
                 
                     <hr>
                    <p class="mt-2 fw-bold"> Phương thức thanh toán:</p>
                
                           <div class="bg-light p-2 rounded">
                            <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                            <label class="form-check-label" for="inlineRadio1">Thanh toán tiền mặt khi nhận hàng(COD)</label>
                            </div>
                            </div>
   
                            <div class=" bg-light mt-2 p-2 rounded">
                           <div class="form-check form-check-inline">
                           <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                           <label class="form-check-label" for="inlineRadio2">Chuyển khoản </label>
                           </div>              
                           </div>                         
                      <hr>      
                    
                    
                    
                    <div class="container">
                    <div class="row justify-content-md-center">
                    <div class="col col-lg-2">
     
                    </div>
            
                     <button type="submit" class="btn btn-warning mt-2 mb-2 text-white fw-bold">
                      Mua hàng  
                      </button>

                  
                
                    </div>
  
                    </div>
                    
         
 
                 
               </form:form>
            </div>
        </div>
    </div>

</body>
</html>