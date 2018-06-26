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
<%!
public static long getnum(int loopcount) {
	long result;
	String str="";
	int d=0;
	for(int i=1;i<=loopcount;i++) {
		Random r=new Random();
		d=r.nextInt(9);
		str=str+Integer.toString(d);
	}
	result=Long.parseLong(str);
	return result;
}
%>

<%
	java.sql.Date d=new java.sql.Date(new java.util.Date().getTime());
	
	Calendar cal=Calendar.getInstance();
	cal.setTime(d);
	cal.add(Calendar.YEAR,10);
	java.sql.Date e=new java.sql.Date(cal.getTime().getTime());
	
	String owner=request.getParameter("isowner");
	boolean b_owner=false;
	if(owner.equals("Y"))
		b_owner=true;
	
	String agree=request.getParameter("isagree");
	boolean b_agree=false;
	if(agree.equals("Y"))
		b_agree=true;
	
	long accnum=getnum(12);
	
	String goal=request.getParameter("goal");
	String origin=request.getParameter("origin");
	goal=new String(goal.getBytes("ISO-8859-1"), "EUC-KR");
	origin=new String(origin.getBytes("ISO-8859-1"), "EUC-KR");
	
	AccountBean a=new AccountBean();
	a.setAccnum(accnum);
	a.setOwner(request.getParameter("name"));
	a.setBalance(0);
	a.setItemname("KB국민ONE통장");
	a.setOpendate(d);
	a.setExpirdate(e);
	a.setRate((float)0.3);
	a.setTranslimit(300000);
	a.setGoal(goal);
	a.setOrigin(origin);
	a.setIsowner(b_owner);
	a.setIsagree(b_agree);
	
	int status=AccountDAO.insertAccount(a);
	if(status>0) {
		out.println("계좌개설이 완료되었습니다.");
		out.println("계좌번호:"+accnum);
	}
	else
		out.println("fail:"+status);
%>
<form name="f10" method="post" action="bank_index.jsp">
	<input type="submit" value="홈으로"/>
</form>


</body>
</html>