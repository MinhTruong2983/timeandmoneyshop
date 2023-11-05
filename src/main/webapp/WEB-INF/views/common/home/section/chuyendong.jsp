<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link href="<c:url value ='/templates/css/templatemo-festava-live.css'/>"rel="stylesheet">
    <link href="<c:url value ='/templates/css/bootstrap-icons.css'/>" rel="stylesheet">

<style >


#parallax {
  position: relative;
  width: 100vw; /* Chiều rộng sẽ bằng 100% chiều rộng của viewport */
  height: 100vh; /* Chiều cao sẽ bằng 100% chiều cao của viewport */
  background-image:
    url(https://raw.githubusercontent.com/oscicen/oscicen.github.io/master/img/depth-3.png),
    url(https://raw.githubusercontent.com/oscicen/oscicen.github.io/master/img/depth-2.png),
    url('<c:url value ='/templates/images/section3/anh_list/GMT-Master.jpg'/>');
    background-repeat: no-repeat;
    background-position: center;
    background-size: 55%; /* Điều chỉnh kích thước hình ảnh tại đây (ví dụ, 30%) */
    background-attachment: fixed;
  
}

body {
  overflow-x: hidden; /* Ẩn thanh cuộn ngang */
}


</style>
</head>
<body>


<div id="parallax"></div>





 <script src="<c:url value ='/templates/js/sectionchuyendong.js'/>"></script>

</body>
</html>