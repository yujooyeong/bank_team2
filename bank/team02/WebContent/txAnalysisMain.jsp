<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="team02.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="form1" method="get" action="txAnalysis.jsp">
      <h1>���� �ŷ� �м�</h1>
      <h2>�м��� ���ϴ� ���¹�ȣ�� ���ڸ� �Է��ϼ���</h2>
      
���¹�ȣ : <input type="text" name="maccount"><br/>
�⵵ : <input type="text" name="tyear"><br/>
�� : <input type="text" name="tmonth"><br/>
<input type="submit" value="�м��ϱ�" name="submitbtn">
</form>
<button type="button" onclick="location.href='MAINpage.jsp' ">����ȭ��</button>
</body>
</html>