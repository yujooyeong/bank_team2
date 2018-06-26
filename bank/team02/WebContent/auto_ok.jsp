<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.sql.*" %>
<%@ page import = "java.util.Date" %>    
<%@ page import = "java.util.*" %>
<%@ page import="java.text.*" %>
    <%
    request.setCharacterEncoding("euc-kr");

    Class.forName("org.postgresql.Driver");
    
    String url = "jdbc:postgresql://localhost:5432/postgres";
    String id = "postgres";
    String pass = "dkssudelwlahs";
   
   Timestamp nowdate = new Timestamp(System.currentTimeMillis());
   Date currentdate = new Date();
   // Timestamp는 다른 데에 쓰고 Date를 마지막 비교 출력에 사용하자.
   
   SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
   String date = fmt.format(currentdate);
   
   String transdate = request.getParameter("transdate");
   String s_maccount = request.getParameter("maccount");
   String bank = request.getParameter("bank");
   String s_yaccount = request.getParameter("yaccount");
   String s_amount = request.getParameter("amount");
      
   long maccount = Long.parseLong(s_maccount);
   long yaccount = Long.parseLong(s_yaccount);
   long amount = Long.parseLong(s_amount);   
   
   try {	// autotrans의 transdate는 이체진행일을 의미하고
	   		// transhistory의 transdate는 이체가 진행된 시간을 의미한다.
	   Connection conn = DriverManager.getConnection(url,id,pass);
	   String sql1 = "INSERT INTO autotrans(transdate, maccount, bank, yaccount, amount) VALUES(?,?,?,?,?)";
	   String sql2 = "INSERT INTO transhistory(type, maccount, bank, yaccount, amount, date) VALUES(?,?,?,?,?,?)";
	   String sql3 = "UPDATE account SET balance=balance-? WHERE accnum = ?";
	   String sql4 = "UPDATE account, transhistory SET balance=balance+? WHERE accnum = yaccount";
	   
	   PreparedStatement pstmt1 = conn.prepareStatement(sql1); 
	   PreparedStatement pstmt2 = conn.prepareStatement(sql2); 
	   PreparedStatement pstmt3 = conn.prepareStatement(sql3);
	   PreparedStatement pstmt4 = conn.prepareStatement(sql4);
	   
	   pstmt1.setString(1, transdate);	   
	   pstmt1.setLong(2, maccount);
	   pstmt1.setString(3, bank); 
	   pstmt1.setLong(4, yaccount); 
	   pstmt1.setLong(5, amount);

	   pstmt2.setString(1, "AutoTrans");
	   pstmt2.setLong(2, maccount);
	   pstmt2.setString(3, bank); 
	   pstmt2.setLong(4, yaccount);
	   pstmt2.setLong(5, amount);
	   pstmt2.setTimestamp(6, nowdate);

	   pstmt1.execute(); 
	   pstmt1.close();
	   
	   date = date.substring(8,10); // 현재 시간
	   	   
	   if(date.equals(transdate)){
		   pstmt3.setLong(1, amount);
		   pstmt3.setLong(2, maccount);
		   pstmt4.setLong(1, amount);
		   pstmt2.execute();
		   pstmt3.execute();
		   pstmt4.execute();
		   pstmt2.close();
		   pstmt3.close();
		   pstmt4.close();
	}
	   conn.close();
	   } catch(SQLException e) {
		   out.println( e.toString() ); 
		   } 

    %>
    
    <script language=javascript> 
    self.window.alert("자동이체 신청이 완료되었습니다."); 
    location.href="MAINpage.jsp";
    </script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Auto OK</title>
</head>
<body>

</body>
</html>