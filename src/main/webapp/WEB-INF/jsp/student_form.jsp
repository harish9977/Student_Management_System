<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="form-inline">

		<spring:url value="/student/addStudent" var="addURL" />
		<legend>
			<h2 style="text-align: center;">Add Student</h2>
			<br>

			<form:form modelAttribute="studentForm" method="post"
				action="${addURL}" cssClass="form">
				<form:hidden path="id" />
				<div class="form-group">
					<label>First Name</label>
					<form:input path="firstname" cssClass="form-control" id="firstname" />
				</div>

				<div class="form-group">
					<label>Last Name</label>
					<form:input path="lastname" cssClass="form-control" id="lastname" />
				</div>

				<div class="form-group">
					<label>Course</label>
					<form:input path="course" cssClass="form-control" id="course" />
				</div>

				<div class="form-group">
					<label>Email</label>
					<form:input path="email" cssClass="form-control" id="email" />
				</div>

				<button type="submit" class="btn btn-success">Add Student</button>
			</form:form>
		</legend>
	</div>

</body>
</html>