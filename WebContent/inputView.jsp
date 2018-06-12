<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InputView</title>
</head>
<body>
<script>
	if(${result}>0){
	alert("입력에 성공했습니다.");	
		
	}else{
		alert("입력에 실패했습니다.");	
		
	}
	 location.href="input.jsp";
	</script>
</body>

</html>