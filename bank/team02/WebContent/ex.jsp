<%@page import="team02.ExchageRate"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	String liststr = ExchageRate.getExchagerate();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body> 
    <table border="1" width="250">
        <tr>
            <td>통화코드</td>
            <td>국가/통화명</td>
            <td>송금환율(보내실때)</td>
            <td>송금환율(받으실때)</td>
            <td>매매기준율</td>
        </tr>

        <%
        	String str[] = {"dsafd", "dsafsad"};
            //스크립트 릿  : 변수선언 , 연산 , 제어문 , 출력
            for(int i=0;i<str.length;i++){
                out.println("<tr><td>");
                out.println(i);
                out.println("</td><td>");
                out.println(str[i]);
                out.println("</td>");
                out.println("</tr>");
            }
        %>
        </table>
        <br/>
</body>

</html>