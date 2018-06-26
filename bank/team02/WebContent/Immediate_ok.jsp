<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

    <%
    request.setCharacterEncoding("euc-kr");

    Class.forName("org.postgresql.Driver");
    
    String url = "jdbc:postgresql://localhost:5432/postgres";
    String id = "postgres";
    String pass = "dkssudelwlahs";
   
   String type = request.getParameter("type");
   String s_maccount = request.getParameter("maccount");
   String bank = request.getParameter("bank");
   String s_yaccount = request.getParameter("yaccount");
   String s_amount = request.getParameter("amount");
   String transpw = request.getParameter("transpw");
   Timestamp date = new Timestamp(System.currentTimeMillis());
   
   long maccount = Long.parseLong(s_maccount);
   long yaccount = Long.parseLong(s_yaccount);
   long amount = Long.parseLong(s_amount);   

   try {	
	   Connection conn = DriverManager.getConnection(url,id,pass); 
	   ResultSet rs = null;
	   String sql1 = "INSERT INTO transhistory(type, maccount, bank, yaccount, amount, date) VALUES(?,?,?,?,?,?)"; 
	   String sql2 = "UPDATE account SET balance = balance - ? WHERE accnum = ?";
	   String sql3 = "UPDATE account, transhistory SET balance = balance + ? WHERE accnum = yaccount";
	   
	   PreparedStatement pstmt1 = conn.prepareStatement(sql1); 
	   PreparedStatement pstmt2 = conn.prepareStatement(sql2); 
	   PreparedStatement pstmt3 = conn.prepareStatement(sql3);
	   PreparedStatement pstmt4 = conn.prepareStatement("SELECT transpw FROM user");
	   
	   rs = pstmt4.executeQuery();
	   rs.next();
	   
	   String rs_transpw = rs.getString("transpw");
	   
	   if(rs_transpw.equals(transpw)){
	   
		   pstmt1.setString(1, type);
		   pstmt1.setLong(2, maccount);
		   pstmt1.setString(3, bank); 
		   pstmt1.setLong(4, yaccount); 
		   pstmt1.setLong(5, amount);
		   pstmt1.setTimestamp(6, date);
		   
		   pstmt2.setLong(1, amount);
		   pstmt2.setLong(2, maccount);
		   pstmt3.setLong(1, amount);
		   
		   pstmt1.execute(); 
		   pstmt2.executeUpdate();
		   pstmt3.executeUpdate();
	
		   pstmt1.close();
		   pstmt2.close();
		   pstmt3.close();
		  
		   rs.close();
		   
		   pstmt4.close();
		   conn.close();
	   }
	   else{
		%>
	      <script>    
	     	 alert("비밀번호 오류");
		     document.location.href="ImmediateTransfer.jsp";
	      </script>
		    <%
		   
	   }
	   
	   } catch(SQLException e) {
		   out.println( e.toString() ); 
		   } 

    %>
    <script language=javascript> 
    self.window.alert("이체 완료"); 
    location.href="MAINpage.jsp";
    </script>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Write OK</title>
</head>
<body>

</body>
</html>