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
      <h1>월간 거래 분석</h1>
      <h2>분석을 원하는 계좌번호와 일자를 입력하세요</h2>
      
계좌번호 : <input type="text" name="maccount"><br/>
년도 : <input type="text" name="tyear"><br/>
월 : <input type="text" name="tmonth"><br/>
<input type="submit" value="분석하기" name="submitbtn">
</form>
<button type="button" onclick="location.href='MAINpage.jsp' ">메인화면</button>
</body>
</html>