<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="team02.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Item Select</title>
</head>
<body>
�����ϰ��� �ϴ� ��ǰ�� �������ּ���.<br><br>
��Ȱ �� ���� �ŷ� �������� �پ��� ������ ����!<br>
KB ���� ONE����<br><br>
<img src="image\susu.jpg" 
width="400" height="300" border="0">
<br>
<form name="f1" method="post" action="./item1.jsp">
	<input type="submit" value="�ڼ��� ����"/>
</form>

<form name="f2" method="post" action="./check1.jsp">
	<input type="submit" name="KB ���� ONE����" value="�����ϱ�"/>
</form>
<br>
<img src="image\uda.jpg"
width=400 height="250" border="0">
<br>
<form name="f3" method="post" action="./item2.jsp">
	<input type="submit" value="�ڼ��� ����"/>
</form>

<form name="f4" method="post" action="./check2.jsp">
	<input type="submit" name="�����ο����������" value="�����ϱ�"/>
</form>

</body>
</html>