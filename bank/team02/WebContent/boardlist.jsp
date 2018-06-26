<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>

<%
	final int ROWSIZE = 5;
	int BLOCK = 3;

	int pg = 1;
	
	if(request.getParameter("pg")!=null) {
		pg = Integer.parseInt(request.getParameter("pg"));
	}
	
	int allPage = 0;
	
	int startPage = 1;
	int endPage = BLOCK;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>게시판</title>
 </head>
  <body>
  	<div class="header" style="display:flex; justify-content:center;">
  		<font size="30" weight="bold">게시판 문의사항</font>
  		
  	</div>
  
 <%
 	Class.forName("org.postgresql.Driver");
	String url = "jdbc:postgresql://localhost:5432/postgres";
	String id = "postgres";
	String pass = "dkssudelwlahs";
	int total = 0;
	
	try {
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		Statement stmt1 = conn.createStatement();
		String sql = "";

		String sqlCount = "SELECT COUNT(*) FROM QnA";
		ResultSet rs = stmt.executeQuery(sqlCount);
		
		if(rs.next()){
			total = rs.getInt(1);
		}
		
		BLOCK = total/ROWSIZE + 1;
		if(pg < 3) {
			startPage = 1;
		} else {
			startPage = pg-2;
		}
		if(BLOCK < pg+2) {
			endPage = BLOCK;
		} else {
			endPage = pg + 2;
		}
		
		
		int sort=1;
		String sqlSort = "SELECT * FROM QnA order by step2 asc, reg_num asc, step asc limit "+ ROWSIZE + " offset " + ROWSIZE*(pg-1);
		rs = stmt.executeQuery(sqlSort);
		
		
		
		
%>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('image/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="image/table_left.gif" width="5" height="30" /></td>
   <td width="73">등록번호</td>
   <td width="379">제목</td>
   <td width="73">작성자</td>
   <td width="164">작성일</td>
   <td width="58">조회수</td>
   <td width="7"><img src="image/table_right.gif" width="5" height="30" /></td>
  </tr>
<%
	if(total==0) {
%>
	 		<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">등록된 글이 없습니다.</td>
	 	  </tr>
<%
	 	} else {
			while(rs.next()) {
				int idx = rs.getInt(1);
				String title = rs.getString(2);
				String name = rs.getString(3);
				String time = rs.getString(7);
				int hit = rs.getInt(6);
				int indent = rs.getInt(9);
				
					Date date = new Date();
					SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); 
					String year = (String)simpleDate.format(date);
					String yea = time.substring(0,10);
				
			
		
%>
<tr height="25" align="center">
	<td>&nbsp;</td>
	<td><%=idx %></td>
	<td align="left">
	<% 
		
	for(int j=0;j<indent;j++){
%>		&nbsp;&nbsp;&nbsp;<%
	}
	if(indent!=0){
%>		<img src='image/reply_icon.gif' />
<%
	}
%>
	<a href="view.jsp?idx=<%=idx%>&pg=<%=pg%>"><%=title %></a>
<%
	if(year.equals(yea)){
%>
			<img src='image/new.jpg' />
<%
		} 
%>
	</td>
	<td align="center"><%=name %></td>
	<td align="center"><%=yea %></td>
	<td align="center"><%=hit %></td>
	<td>&nbsp;</td>
</tr>
  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
<% 
				
		}
	} 
	rs.close();
	stmt.close();
	conn.close();
} catch(SQLException e) {
//	out.println( e.toString() );
}
%>
 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
 </table>
 
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
  <tr>
	<td align="center">
		<%
			if(startPage >= 2) {
		%>
				[<a href="boardlist.jsp?pg=1">◀◀</a>]
				[<a href="boardlist.jsp?pg=<%=startPage-1%>">◀</a>]
		<%
			}
		%>
				
		<%
			for(int i=startPage; i<= endPage; i++){
				if(i==pg){
		%>
					<u><b>[<%=i %>]</b></u>
		<%
				}else{
		%>
					[<a href="boardlist.jsp?pg=<%=i %>"><%=i %></a>]
		<%
				}
			}
		%>
		
		<%
			if(endPage <= BLOCK-1){
		%>
			[<a href="boardlist.jsp?pg=<%=endPage+1%>">▶</a>]
			[<a href="boardlist.jsp?pg=<%=allPage%>">▶▶</a>]
		<%
			}
		%>
		</td>
		</tr>
		   <tr align="center">
      <td colspan="2" width="399">
      <input type=button value="메인페이지" OnClick="window.location='MAINpage.jsp'">	
      <input type=button value="글쓰기"  OnClick="window.location='write.jsp'">	
     </tr>
 </table>
 </body> 
</html>

