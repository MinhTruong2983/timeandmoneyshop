<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Email Form</title>
    
    <style> 
    

    </style>
</head>
<body>
    <form:form class="me-auto ms-auto w-50" action="/gmailSend" method="post" modelAttribute="mailInfo">
        
       
  <div class="container mt-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
        <div class="col-md-6 shadow p-4 rounded">
            <h3 class="mb-4 text-center">Nhận Mã Giảm Giá</h3>
            <form action="#" method="post">
                <div class="mb-3">
                    <label for="inputEmail" class="form-label">Email của bạn</label>
                    <input type="email" class="form-control" name="to" placeholder="Nhập email của bạn" required>
                    <p>${gmailMessage}</p>
                </div>            
                 <div class="row">
                           <div class="col-md-6 mb-3">
                            <button type="submit" class="btn    text-white fw-bold w-100 " style="background-color: #00FF00;">Nhận mã </button>
                           </div>
                          <div class="col-md-6 mb-3">
                          <a href="/cart/view" class="btn btn-primary text-white fw-bold w-100">Trở về</a>
                           </div>
                  </div>
              
            </form>
        </div>
    </div>
</div>


        
    </form:form>
</body>
</html>
