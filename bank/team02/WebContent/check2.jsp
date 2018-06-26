<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="team02.*" import="java.util.*"
    import="java.text.*" import="java.sql.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ATPW check</title>
</head>
<body>
<form name="check2" method="post" action="atpwcheck2.jsp">
<table border="0" cellpadding="1" cellspacing="0">
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">이름</font>
		</td>
		<td width="195">
			<p><font size="2">
			<input type="text" name="name" maxlength="20">
			</font>
		</td>
	</tr>
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">ATPW</font>
		</td>
		<td width="195">
			<p><font size="2">
			<input type="password" name="atpw" maxlength="10">
			</font>
		</td>
	</tr>
</table>
<input type="submit" value="확인">
</form>


</body>
</html>