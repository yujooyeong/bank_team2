<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>  
<%
	request.setCharacterEncoding("euc-kr");

	Class.forName("org.postgresql.Driver");
	
	Connection conn = null;
	
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	int pw = Integer.parseInt(request.getParameter("password"));
	String content = request.getParameter("memo");
	int max=0;
	
	try {	
	
		conn = DriverManager.getConnection(
				"jdbc:postgresql://localhost:5432/postgres", "postgres",
				"dkssudelwlahs");
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT MAX(reg_num) FROM QnA;";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			max=rs.getInt(1);
		}
		
		
		sql = "INSERT INTO QnA(wtitle, wname, wpasswd, wcontent, ref) VALUES(?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setInt(3, pw);
		pstmt.setString(4, content);
		pstmt.setInt(5, max+1);
		
		pstmt.execute();
		pstmt.close();
		stmt.close();
		conn.close();		
		
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="boardlist.jsp"; 

</script>
