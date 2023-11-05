<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ngang</title>
    <link href="<c:url value ='/templates/css/templatemo-festava-live.css'/>"rel="stylesheet">

<style >

/* Inspired by this pen by Pieter Biesemans https://codepen.io/pieter-biesemans/pen/BQBWXX and My Mother Before Me project http://mymotherbeforeme.com/ */

body {
  
  color: #5D4037;
}


/* hide scrollbar */
::-webkit-scrollbar {
  width: 1px;
  height: 1px;
}

::-webkit-scrollbar-button {
  width: 1px;
  height: 1px;
}
.external {
  overflow: hidden;
  height: 100vh;
}

.horizontal-scroll-wrapper {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100vh;
  transform: rotate(-90deg) translate3d(0,-100vh,0);
  transform-origin: right top;
  overflow-y: auto;
  overflow-x: hidden;
  padding: 0;
  height: 100vw;
  perspective: 1px;
	transform-style: preserve-3d;
  padding-bottom: 10rem;
}
.img-wrapper {
  transform: rotate(90deg);
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 40vh;
  transform-origin: 50% 50%;
  transform: rotate(90deg) translateZ(.1px) scale(0.9) translateX(0px) translateY(-3vh);
  transition: 1s;
}



.slower {
  transform: rotate(90deg) translateZ(-.2px) scale(1.1) translateX(0%) translateY(-10vh);
}
.slower1 {
  transform: rotate(90deg) translateZ(-.25px) scale(1.05) translateX(0%) translateY(8vh);
}
.slower2 {
  transform: rotate(90deg) translateZ(-.3px) scale(1.3) translateX(0%) translateY(2vh);
}
.slower-down {
  transform: rotate(90deg) translateZ(-.2px) scale(1.1) translateX(0%) translateY(16vh) ;
}
.faster {
  transform: rotate(90deg) translateZ(.15px) scale(0.8) translateX(0%) translateY(14vh) ;
}
.faster1 {
  transform: rotate(90deg) translateZ(.05px) scale(0.8) translateX(0%) translateY(10vh) ;
}
.fastest {
  transform: rotate(90deg) translateZ(.22px) scale(0.7) translateX(-10vh) translateY(-15vh) ;
}
.vertical {
   transform: rotate(90deg) translateZ(-.15px) scale(1.15) translateX(0%) translateY(0%) ;
}
.last {
  transform: rotate(90deg) translateZ(-.2px) scale(1.1) translateX(25vh) translateY(-8vh) ;
}




.scroll-info {
  top: 1rem;
}


.img-wrapper a {
  overflow: hidden;
  display: block;
  padding: 1vh ;
  background: #efecdb;
  box-shadow: 0 10px 50px #5f2f1182;
}
.img-wrapper img {
  max-width: 45vh;
  max-height: 50vh;
  transition: .5s;
  vertical-align: top;
  filter: saturate(40%) sepia(30%) hue-rotate(5deg);
}
a:hover img {
  filter: none;
}
p {
  margin: 0;
}
.scroll-info {
  display: flex;
  align-items: center;
}
.icon svg {
    width: 50px;
    fill: currentcolor;
}


</style>
</head>
<body>
  <header>

      <p class=" fw-bold">T & M</p>
    </header>

 <div class="external">
    <div class="horizontal-scroll-wrapper">
      <div class="img-wrapper slower">
        <a href="/product/list" >
        <img src="<c:url value ='/templates/images/nen/nen-2-cuahang.jpg'/>" alt="">
        </a>
      </div>
  
      <div class="img-wrapper faster">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/nen/lichsu.jpg'/>" alt="">
        </a>
      </div>
  
      <div class="img-wrapper slower vertical">
        <a href="/product/list" >
          <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/74321/windowshopclock.jpg" alt="">
        </a>
      </div>
  
      <div class="img-wrapper slower slower-down">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/section3/anh_list/GMT-Master.jpg'/>" alt="">
        </a>
      </div>
  
      <div class="img-wrapper">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/section3/anh_list/nhieu.jpg'/>" alt="">
        </a>
      </div>
  
      <div class="img-wrapper slower">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/section3/anh_list/nganglogo.jpg'/>" alt="">
        </a>
      </div>
  
      <div class="img-wrapper faster1">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/section3/anh_list/ngang2.jpg'/>" alt="">
        </a>
      </div>
      
      <div class="img-wrapper slower slower2">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/section3/anh_list/ngang3.jpg'/>" alt="">
        </a>
      </div>
      
      <div class="img-wrapper">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/section3/anh_list/ngang4.jpg'/>" alt="">
        </a>
      </div>
      
      <div class="img-wrapper slower">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/section3/anh_list/ngang5.jpg'/>" alt="">
        </a>
      </div>
      
      <div class="img-wrapper slower last">
        <a href="/product/list" >
          <img src="<c:url value ='/templates/images/section3/anh_list/ngang6.jpg'/>" alt="">
        </a>
      </div>
    </div>
  
  </div>





</body>
</html>