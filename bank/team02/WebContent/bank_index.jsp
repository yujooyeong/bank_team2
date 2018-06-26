<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="team02.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Item Select</title>
</head>
<body>
개설하고자 하는 상품을 선택해주세요.<br><br>
생활 속 은행 거래 실적으로 다양한 수수료 면제!<br>
KB 국민 ONE통장<br><br>
<img src="image\susu.jpg" 
width="400" height="300" border="0">
<br>
<form name="f1" method="post" action="./item1.jsp">
	<input type="submit" value="자세히 보기"/>
</form>

<form name="f2" method="post" action="./check1.jsp">
	<input type="submit" name="KB 국민 ONE통장" value="가입하기"/>
</form>
<br>
<img src="image\uda.jpg"
width=400 height="250" border="0">
<br>
<form name="f3" method="post" action="./item2.jsp">
	<input type="submit" value="자세히 보기"/>
</form>

<form name="f4" method="post" action="./check2.jsp">
	<input type="submit" name="직장인우대종합통장" value="가입하기"/>
</form>

</body>
</html>