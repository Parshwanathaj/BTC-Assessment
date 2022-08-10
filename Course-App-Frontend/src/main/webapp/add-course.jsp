<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.*, java.util.*, javax.servlet.*, java.text.SimpleDateFormat, java.sql.Timestamp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<link rel="stylesheet" href="MyWork.css">
</head>
<body>
	<div class="container mt-2">
		<div class=my1>

			<h1>Add Course Form</h1>

			<form action="insert-course" method="post">
				<div class="row">
					<div class="col">
						<div>
							<label>Id</label> <input type="number" class="form-control"
								name="id">
						</div>
						<!-- form -control height and width of label  -->
					</div>
					<div class="col">
						<div class="form-group">
							<label for="designation">Title</label> <input type="text"
								class="form-control" id="designation" name="title">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="department">Description</label> <input type="text"
								class="form-control" id="department" name="description">
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label for="hero">Price</label> <input type="text"
								class="form-control" id="salary" name="price">
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
				<div class=my2>
					<button type="submit" class="btn btn-primary">Save Course</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>