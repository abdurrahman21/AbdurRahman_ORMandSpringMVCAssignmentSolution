<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			crossorigin="anonymous">
		
		<title>Customer Form</title>
	</head>
	<body>
		<div class="container">
	
			<h3>Customer Form</h3>
			<hr>
	
			<form action="/CustomerRelationMgmt/customer/save" method="POST">
				<input type="hidden" name="id" value="${customer.customerId}" />
				<div class="form-group">
					<label>First Name : </label> <input type="text" name="firstName"
						value="${customer.firstName}" class="form-control mb-4 col-4"
						placeholder="First Name">
				</div>
				<div class="form-group">
					<label>Last Name : </label> <input type="text" name="lastName"
						value="${customer.lastName}" class="form-control mb-4 col-4"
						placeholder="Last Name">
				</div>
				<div class="form-group">
					<label>Email : </label> <input type="email" name="email"
						value="${customer.email}" class="form-control mb-4 col-4"
						placeholder="Email">
				</div>
	
				<button type="submit" class="btn btn-success col-2">Save</button>
	
			</form>
			<hr>
			<a href="/CustomerRelationMgmt/customer/list">Back to Customer List
				page</a>
	
		</div>
	
	</body>
</html>