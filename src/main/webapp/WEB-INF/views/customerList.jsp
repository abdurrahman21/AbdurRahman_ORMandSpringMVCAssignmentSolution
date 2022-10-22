<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Customer Relationship Management</title>
</head>
<body>
	<div class="container h-75">
		<div class="bg-success text-white">
			<h2 class="p-4 mx-auto">Customer Relationship Management</h2>
		</div>
	</div>

	<div class="container py-4">

		<div class="row px-2">
			<form class="form-inline px-2">
				<a href="/CustomerRelationMgmt/customer/add_UpdateCustomer?id=${0}"
					class="btn btn-success btn-sm mb-3"> Add Customer </a>
			</form>
		</div>

		<table class="table table-bordered table-striped">
			<thead class="table-success">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${customers}" var="customer">
					<tr>
						<td><c:out value="${customer.firstName}" /></td>
						<td><c:out value="${customer.lastName}" /></td>
						<td><c:out value="${customer.email}" /></td>
						<td><a
							href="/CustomerRelationMgmt/customer/add_UpdateCustomer?id=${customer.customerId}"
							class="btn btn-info btn-sm"> Update </a> <a
							href="/CustomerRelationMgmt/customer/delete?id=${customer.customerId}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">
								Delete </a></td>

					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

</body>
</html>