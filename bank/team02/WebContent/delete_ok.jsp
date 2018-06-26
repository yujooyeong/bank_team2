<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>  
			
<%
	request.setCharacterEncoding("euc-kr");
	Class.forName("org.postgresql.Driver");

	int password = 0;
	int idx = Integer.parseInt(request.getParameter("idx"));
	int passw = Integer.parseInt(request.getParameter("password"));
	
	try{
		Connection conn;
		conn = DriverManager.getConnection(
				"jdbc:postgresql://localhost:5432/postgres", "postgres",
				"dkssudelwlahs");
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT wpasswd FROM QnA WHERE reg_num=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		
		 if(rs.next()){
				password = rs.getInt(1);
		 }
		 
         if(password==passw) {
	   			
	sql = "DELETE FROM QnA WHERE reg_num=" + idx;	
	stmt.executeUpdate(sql);	 
%>
		<script language=javascript>
			self.window.alert("해당 글을 삭제하였습니다.");
			location.href="boardlist.jsp";
		</script>

<%
rs.close();
stmt.close();
conn.close();

 } else { 
%>
	<script language=javascript>
	 self.window.alert("비밀번호를 틀렸습니다.");
		location.href="javascript:history.back()";
	</script>
<%		
 }
} catch(SQLException e) {
out.println( e.toString() );
} 

%>
