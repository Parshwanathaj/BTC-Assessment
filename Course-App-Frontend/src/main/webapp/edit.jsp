<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.*, java.util.*, javax.servlet.*, java.text.SimpleDateFormat, java.sql.Timestamp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<style>
.btn-primary {
	text-align: center;
	padding: 10px;
	margin: auto;
	background-color: green;
	text-align: center;
}

.mt-3 {
	font-family: "Times New Roman", Times, serif;
}

h1 {
	texr-align: center;
}

.mt-3 h1 {
	texr-align: center;
	text-decoration: none;
	display: inline-block;
	padding: 8px 450px;
	text-decoration: none;
}

.mt-3 h1::after {
	content: '';
	width: 0%;
	background: #ff0000;
	margin: auto;
	height: 2px;
	display: block;
	transition: 1s;
}

.mt-3 h1:hover::after {
	width: 100%;
}
</style>
<body>
	<div class="container mt-3">
		<h1>Edit Course</h1>
		&nbsp; &nbsp;
		<form action="update-course" method="post">
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Id</label> <input type="text"
							value="${course.id}" class="form-control" id="number" name="id"
							readonly="readonly">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="id">Title</label> <input type="text"
							value="${course.title}" class="form-control" id="text"
							name="title">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Description</label> <input type="text"
							value="${course.description}" class="form-control" id="name"
							name="description" placeholder="Enter Name">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="designation">Price</label> <input type="number"
							value="${course.price}" class="form-control" id="designation"
							name="price" placeholder="coursePrice">
					</div>
				</div>
				<%
				Date today = new Date();
				SimpleDateFormat date1 = new SimpleDateFormat("YYYY-MM-dd'T'HH:mm:ss'Z'");
				Timestamp time = new Timestamp(today.getTime());
				%>
				<div hidden class="col">
					<div class="form-group">
						<label for="hero">Price</label> <input type="text"
							value="<%=date1.format(time)%>" class="form-control" id="date"
							name="date">
					</div>
				</div>
			</div>
			<div class=my3>
				<button type="submit" class="btn btn-primary">Update Course</button>
			</div>
		</form>
	</div>
</body>
</html>