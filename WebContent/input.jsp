<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Input</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
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

<form method="post" action="input.do">
<div class="container bootstrap snippet">
<div class="row">
<div class="form-group col-xs-10">
<label class="form-group">이름</label><input type=text class="form-control" id="name">
</div>
</div>
<div class="row">
<div class="form-group col-xs-10">
<label class="form-group">메세지</label><input type=text class="form-control" id="msg">
</div>
</div>
<div class="form-group col-xs-2">
<button id="action" class="btn btn-default">클릭</button>
</div></div>
</form>
</body>
</html>