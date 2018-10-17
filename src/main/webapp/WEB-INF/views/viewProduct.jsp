<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>
</head>
<body>
<style>
h1
{
margin-top:55px;
}

</style>
	<div class="container">
		<table  class="table">
     
           
			<tr>
				<h1 align="center">Product Details</h1>
			
           	</tr>
			<tr>
			
				<th><img class="img-fluid" height="400px"
					width="240px"
					src="<c:url value="/resources/image/${product.productID}.png"/>" />

				</th>
					<td></td>
	</tr>

		
			<tr>
			
				<th>>Product ID</th>
				<td>${product.productID}</td>
			
		</tr>
				<th>Product Name</th>
				<td>${product.productName}</td>
			<tr>
		
				<th>Product Price</th>
				<td>${product.productPrice}</td>
			</tr>
			<tr>
		
				<th>Product Description</th>
				<td>${product.productDesc}</td>
			
			</tr>
			
	
				
					<th>Quantity</th>
					<td><input type="text" name="qty"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="AddToCart"
						class="btn btn-info" /></td>
						<td><a href="viewProduct" class="btb btn-info">Continue Shopping</a></td>

				</tr>


		</table>
	
</div>


</body>
</html>