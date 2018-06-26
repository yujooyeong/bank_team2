<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("euc-kr");

	Class.forName("org.postgresql.Driver");

	Connection conn = null;
	String name = request.getParameter("name");
	int password = Integer.parseInt(request.getParameter("password"));
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	try {
		int ref = 0;
		int indent = 0;
		int step = 0;
		int step2 = 0;

		conn = DriverManager.getConnection(
				"jdbc:postgresql://localhost:5432/postgres", "postgres",
				"dkssudelwlahs");
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT ref, indent, step, step2 FROM QnA WHERE reg_num=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			ref = rs.getInt(1);
			indent = rs.getInt(2);
			step = rs.getInt(3);
			step2 = rs.getInt(4);
		}
		
		sql = "UPDATE QnA SET step=step+1 WHERE ref="+ref+" and step>" +step;
		stmt.executeUpdate(sql);
		
		sql = "INSERT INTO QnA(wtitle, wname, wpasswd, wcontent, ref, indent, step, step2) values(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setInt(3, password);
		pstmt.setString(4, memo);
		pstmt.setInt(5, idx);
		pstmt.setInt(6, indent+1);
		pstmt.setInt(7, step+1);
		pstmt.setInt(8, step2);
		pstmt.execute(); 
		rs.close();
		stmt.close();
		pstmt.close();
		conn.close();
		
	}catch(Exception e) {
		
	}
%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="boardlist.jsp";
  </script>


