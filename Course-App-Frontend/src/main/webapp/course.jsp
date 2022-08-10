<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<link rel="stylesheet" href="MyWork.css">
</head>
<body>
	&nbsp;
	<div class="msg">
		<div id="msgid" class="toast_msg">${success}</div>
		<div id="msgid1" class="toast_msg">${edit}</div>
		<div id="msgid2" class="toast_msg">${delete}</div>
	</div>
	<div class="container mt-3">
		<!-- screen size -->
		<div class=my>
			<h1>Add Course Form</h1>
			<div class=m1>
				<a href="add-course" class="btn btn-primary"> Add Course </a> <br>
				&nbsp;
			</div>
		</div>
		<div class=hi>
			<form action="/" method="get">
				Filter : <input id="txtSearch" type="text" class="input_search"
					placeholder="Type Course Title" name="keyword" required>
				<button type="submit" class="btn">Search</button>
				<button type="submit" class="btn">clear</button>

			</form>
		</div>
		&nbsp;
		<div class="row">
			<table class="table table-hover">
				<!-- table lines -->
				<thead class="thead-dark">
					<tr>
						<th>Id</th>
						<th>Course Title</th>
						<th>Course Description</th>
						<th>Course Price</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="course" items="${course}">
						<tr>
							<td>${course.id}</td>
							<td>${course.title}</td>
							<td>${course.description}</td>
							<td>${course.price}</td>
							<td><a href="edit-course/${course.id}"> Edit </a></td>

							<td><a href="delete-course/${course.id}"> Delete </a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript"> 
setTimeout (() =>{document.getElementById('msgid').innerHTML="";}, 4000 );
setTimeout (() =>{document.getElementById('msgid1').innerHTML="";}, 4000 );
setTimeout (() =>{document.getElementById('msgid2').innerHTML="";}, 4000 );
</script>
</body>
</html>