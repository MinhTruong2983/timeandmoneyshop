<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<title>admin</title>
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
    <form:form action="/category/index" method="POST" modelAttribute="item" class="col-md-6 offset-md-3 mt-5">
      <div class="mb-3">
        <label for="name" class="form-label">Ppoduct Name:</label>

        <form:input path="name" class="form-control" />
    </div>
     <div class="mb-3">
        <label for="productImage">description</label>
        <form:input path="description" class="form-control" />
    </div>
        <div class="mb-3">
        <label for="name" class="form-label">Price:</label>
        <form:input path="price" class="form-control" />
    </div>
     <div class="mb-3">
        <label for="productImage">quantity</label>
        <form:input path="quantity" class="form-control" />
    </div>
    
    
    <div class="mb-3">
        <label for="productImage">name image:</label>
        <form:input path="image" class="form-control" />
    </div>

    
    
    <hr>
    <button type="submit" class="btn btn-success" formaction="/product/create">Create</button>
    <button type="submit" class="btn btn-warning" formaction="/product/update">Update</button>
    <button type="submit" class="btn btn-danger" formaction="/product/delete">Delete</button>

</form:form>
    
       
  
</div>
    
    
    
    
<div class="container mt-5">
        <h1 class="mb-4"> Table Product</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>description</th>
                    <th>Price</th>
                    <th>quantity</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${items}">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>${product.quantity}</td>
                        <td>${product.image}</td>
                           <td>
                    <a class="btn btn-primary btn-sm btn-success" href="/admin/edit/${product.id}">Edit</a>
                    <a class="btn btn-primary btn-sm btn-danger" href="/admin/delete/${product.id}">Delete</a>
                </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>







</body>
</html>