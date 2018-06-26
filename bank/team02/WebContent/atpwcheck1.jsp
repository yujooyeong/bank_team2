<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" import="java.text.*" import="java.util.*"
    import="team02.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String name=request.getParameter("name");
	int atpw=Integer.parseInt(request.getParameter("atpw"));
	boolean at_result=UserDAO.CompareATPW(name,atpw);
	boolean check=UserDAO.Check(name);
	boolean result=at_result&&check;
	
	int count=CntDAO.Get(name);
	if(count==0) {
		CntDAO.Init(name);
		CntDAO.plus(name, 1);
	}
	System.out.println("count:"+count);
	
	if(count<5) {
		if(result) {
			System.out.println("true");
			CntDAO.delete(name);
			pageContext.forward("info1.jsp");
		}
		else {
			System.out.println("false");
			CntDAO.plus(name,count+1);
			pageContext.forward("check1.jsp");
		}
	}
	else {
		System.out.println("인증 초과");
		UserDAO.updateAuthLimit(name);
		CntDAO.delete(name);
		pageContext.forward("bank_index.jsp");
	}
%>

</body>
</html>