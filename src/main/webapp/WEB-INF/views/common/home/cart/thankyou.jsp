<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>T & M : cảm ơn quý khách</title>

<style>
  
    . h2 {
      font-size: 24px;
      margin-bottom: 20px;
    }

    . p {
      font-size: 16px;
      margin-bottom: 10px;
    }
    body {
	background-color: gray;
	
}
.hoadon{
background-color: white;}



</style>
</head>
<body>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6 hoadon rounded custom-modal">
           <h2 class=" text-center text-danger"> T & M  </h2>
          <h2>Cảm ơn bạn đã tin tưởng mua sản phẩm</h2>

          <br>
          <p>Thời gian giao hàng dự kiến: 10 ngàn năm</p>
          
          <p>Hoặc hơn ai mà biết được :))</p>
          
          <p>Chúc bạn một ngày mới tốt lành lớp bờ diuuu 
          <i class="fa-solid fa-heart text-danger fa-beat"></i>
  <i class="fa-solid fa-heart fa-beat text-danger" style="--fa-animation-duration: 0.5s;" ></i>
  <i class="fa-solid fa-heart fa-beat text-danger" style="--fa-animation-duration: 2s;"></i>
  <i class="fa-solid fa-heart fa-beat text-danger" style="--fa-beat-scale: 2.0;"></i>

          </p>
        <div class="container">
                    <div class="row justify-content-md-center">
                    <div class="col col-lg-2">     
                    </div>          
                     <a href="home/index">
                     <button  type="submit" class="btn btn-warning mt-2 mb-2 text-white fw-bold">
                            Trở về
                       </button>
                     </a>
                    </div>
  
                    </div>
        
      </div>
    </div>
  </div>
  
  
</body>
</html>