<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student List</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
</head>

<body>
	<div class="container">
		<table class="table table-borderless table-light">
			<thead class="table-success">
				<th abbr="id">ID</th>
				<th abbr="fn">First Name</th>
				<th abbr="ln">Last Name</th>
				<th abbr="ln">Course</th>
				<th abbr="e">Email</th>
				<th abbr="row">Update</th>
				<th abbr="row">Delete</th>
			</thead>
			<tbody>
				<c:forEach items="${studentList}" var="student">
					<tr>
						<td>${student.id}</td>
						<td>${student.firstname}</td>
						<td>${student.lastname}</td>
						<td>${student.course}</td>
						<td>${student.email}</td>
						<td><spring:url value="/student/editStudent/${student.id}"
								var="editURL" /> <a class="btn btn-warning" href="${editURL}"
							role="button">Update</a></td>
						<td><spring:url value="/student/deleteStudent/${student.id}"
								var="deleteURL" /> <a class="btn btn-danger"
							href="${deleteURL}" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<spring:url value="/student/addStudent/" var="addURL" />
		<a class="btn btn-primary" href="${addURL}" role="button">Add New
			Student</a>
	</div>
</body>
</html>