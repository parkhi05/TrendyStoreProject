<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Inventory</title>
<script>
    $(document).ready(function(){
        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]]
        });
    });
</script>
</head>
<body>
<div class="container-wrapper">
  <div class="container">
      <div class="page-header">
          <h1><strong>Product Inventory Page</strong></h1>
              <p class="lead">This is the product inventory page</p>
            </div>  
          
        <table>
            <thead>
            <tr class="bg-success">
                <th>Image</th>
                  <th>Product ID</th>
                <th>Product Name</th>
                <th>Product Price</th>
                <th>Product Desc</th>
                <th>Prosuct Price</th>
                 <th>Product Quantity</th>
                <th></th>
            </tr>
            </thead>
              <c:forEach items="${allproducts}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/image/${product.productID}.png" />" alt="image" style="width:100%"/></td>
                            <td>${product.productID}</td>
							<td>${product.productName}</td>
							<td>${product.productPrice}</td>
							 <td>${product.productDesc} </td>
						    <td>
                    <td>
                        <a href="<spring:url value="/product/viewProduct/${product.productID}" />"><span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin//deleteProduct/${product.productID}" />"><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/updateProduct/${product.productID}" />"><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                </tr>
            </c:forEach>
        </table>
                        <a href="<spring:url value="/admin//addProducts" />" class="btn btn-primary">Add Product</a>
      
      </div>
  </div>


 <tr>

</body>
</html>