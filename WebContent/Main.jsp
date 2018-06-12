<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<title>Person</title>
<script>

$(document).ready(function(){
	
	$("#toInput").click(function(){
		$(location).attr("href","input.jsp");
		
	})
	
	 $("#toOutput").click(function(){
		$(location).attr("href","outputView.jsp");
		
		
	}) 
	
	
})

</script>

</head>
<body>
<nav class="navbar navbar-default">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed"
data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
aria-expanded="false">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="#">Input</a>
</div>
</nav>
<div class="container bootstrap snippet" align=center>
<div class="row">
<div class="form-group col-xs-2">
<button class="btn btn-default" id="toInput">Input</button>
<button class="btn btn-warning" id="toOutput">Output</button>
</div>
</div>
</div>


</body>
</html>