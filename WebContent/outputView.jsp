<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<title>Show</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Person</a>
		</div>
	</nav>


	<div class="container">
		<div class="row">
			<table class="table table-striped" style="border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="4" 
							style="text-align: center; border: 1px solid #dddddd">Person
							자료</th>
					</tr>
					<tr>
						<td style="background-color: #eeeeee; text-align=center;">
						<th style="background-color: #eeeeee; text-align=center;">번호
						<th style="background-color: #eeeeee; text-align=center;">이름
						<th style="background-color: #eeeeee; text-align=center;">메세지
					</tr>

				</thead>
<c:forEach var="person" items="${result}"> 
<tbody>

        <tr>
        <td align=center>${person.message_id}
        <td align=center>${person.name}
        <td align=center>${person.message}
</tr>

</tbody>

</c:forEach>
			</table>
		</div>
	</div>





</body>
</html>