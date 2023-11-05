<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>T & M : Hóa Đơn</title>

<style>

body {
	background-color: gray;
}
.hoadon{
background-color: white;}

</style>
</head>
<body>

<header class="justify-content-center text-center mt-5 fw-bold">    <h3>Hóa Đơn khách hàng </h3> </header>
 <div  class="container mt-5  ">
        <div class="row justify-content-center ">
      <div class=" hoadon col-md-6 shadow rounded">
        <form:form action="/xacnhan"  >
      
       <table class="table">
          
            <tbody>
                <c:forEach var="item" items="${cart.items}">
                    <tr>
                        <td><img src="<c:url value ='/templates/images/section3/anh_list/${item.image}'/>" alt="Product Image" width="50"></td>
                        <td>${item.name}</td>
                        <td class="text-danger">${item.price * item.qty} USD</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
      
<!-- Thông tin khách hàng -->
           <div class="row mt-2">
            <div class="col-6">
             <span class="fw-bold">Tên khách hàng:</span>
           
          </div>
          <div class="col-6">
          <span>${khachhang.fullName}</span>
        
          </div>
          </div>
          
           <div class="row mt-2">
            <div class="col-6">
             <span class="fw-bold">Số điện thoại:</span>
          </div>
          <div class="col-6">     
          <span>${khachhang.phoneNumber}</span>
          </div>
          </div>
          
          <div class="row mt-2">
          <div class="col-6">
          <span class="fw-bold">Email:</span>
          </div>
          <div class="col-6">
          <span>${khachhang.email}</span>    
          </div>
         </div>

<hr>

          <p class="mt-2 fw-bold">Kiểm tra địa chỉ chính xác để nhận hàng nhanh nhất nhé!</p>

          <div class="row">
          <div class="col-6">
          <span class="fw-bold">Địa chỉ:</span>
          </div>
          <div class="col-6">     
          <span>${khachhang.address}</span>
          </div>
          </div>
          
          
          <div class="row mt-2">
          <div class="col-6">
          <span class="fw-bold">Ghi chú:</span>
          </div>
          <div class="col-6">     
          <span>${khachhang.note}</span>
          </div>
          </div>

<hr>

          <p class="mt-2 fw-bold">Tổng tiền</p>

          <div class="mt-2 text-danger">
          <span>${totalAmount} USD</span>
          <p>${message}</p>
          </div>

<hr>

          <p class="mt-2 fw-bold">Phương thức thanh toán:</p>

          <div class="bg-light p-2 rounded">
          <div class="form-check form-check-inline">
          <span>${khachhang.paymentMethod}</span>
          </div>
          </div>
          <div class="col-md-auto d-flex justify-content-center">
    <button type="submit" class="btn btn-warning mt-2 mb-2 text-white fw-bold">
        Thanh toán
    </button>
          </div>
          
      </form:form>
         </div>
        </div>
    </div>

</body>
</html>