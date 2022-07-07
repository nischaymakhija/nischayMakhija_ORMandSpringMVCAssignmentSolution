<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>
<body>
<div class='container'>
	<h1 style="text-align:center"><i>CUSTOMER RELATIONSHIP MANAGEMENT</i></h1>

			<!-- Add a button -->
			<a href="add" class="btn btn-primary btn-sm mb-3"> Add Customer </a> 
				
	<table class="table table-bordered table-striped">
			<tr>
				<th>CustomerID</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Email</th>
				<th></th>

			</tr>
			<c:forEach items="${customer}" var="customer">
				<tr>
					<td>${customer.customerId}</td>
					<td>${customer.firstName}</td>
					<td>${customer.lastName}</td>
					<td>${customer.email}</td>
					<td>
						<a
						href="update?customerId=${customer.customerId}"
						class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
						<a href="delete?customerId=${customer.customerId}"
						class="btn btn-danger btn-sm"
						onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">
							Delete </a>
					</td>
				</tr>

			</c:forEach>
		</table>
</div>
</body>
</html>