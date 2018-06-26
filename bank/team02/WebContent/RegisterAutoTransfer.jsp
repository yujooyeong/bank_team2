<%@ page language="java" contentType="text/html; charset=EUC-KR"
import="java.sql.*"
    pageEncoding="EUC-KR"%>
<script language = "javascript"> // 자바 스크립트 시작

function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.transdate.value )   // form 에 있는 type 값이 없을 때
   {
    alert( "출금 지정일을 입력하세요." ); // 경고창 띄움
    form.maccount.focus();   // form 에 있는 name 위치로 이동
    return;
   }
   
  if( !form.maccount.value )
   {
    alert( "출금계좌를 입력하세요" );
    form.maccount.focus();
    return;
   }

  if( !form.yaccount.value )
   {
    alert( "입금계좌를 입력하세요" );
    form.yaccount.focus();
    return;
   }
  
  if( !form.amount.value )
  {
   alert( "이체 금액을 적어주세요" );
   form.amount.focus();
   return;
  }
 
  form.submit();
  }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>자동이체신청</title>
</head>
<body>
<form name=writeform method=post action="auto_ok.jsp">
<table>
   <table width="65%" cellpadding="0" cellspacing="0" border="0">
    <td align="center">자동이체신청</td>
</table>
<table>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">이체지정일</td>
      <td><select name="transdate">
				<option value=''>이체지정일</option>
				<option value='01'>01</option>
				<option value='02'>02</option>
				<option value='03'>03</option>
				<option value='04'>04</option>
				<option value='05'>05</option>
				<option value='06'>06</option>
				<option value='07'>07</option>
				<option value='08'>08</option>
				<option value='09'>09</option>
				<option value='10'>10</option>
				<option value='11'>11</option>
				<option value='12'>12</option>
				<option value='13'>13</option>
				<option value='14'>14</option>
				<option value='15'>15</option>
				<option value='15'>15</option>
				<option value='16'>16</option>
				<option value='17'>17</option>
				<option value='18'>18</option>
				<option value='19'>19</option>
				<option value='20'>20</option>
				<option value='21'>21</option>
				<option value='22'>22</option>
				<option value='23'>23</option>
				<option value='24'>24</option>
				<option value='25'>25</option>
				<option value='26'>26</option>
				<option value='27'>27</option>
				<option value='28'>28</option>
				<option value='29'>29</option>
				<option value='30'>30</option>
				<option value='31'>31</option>
							</select></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">이체은행</td>
      <td><select name="bank">
				<option value=''>이체은행</option>
				<option value='우리'>우리</option>
				<option value='국민'>국민</option>
				<option value='기업'>기업</option>
				<option value='농협'>농협</option>
				<option value='신한'>신한</option>
				<option value='하나'>하나</option>
				<option value='부산'>부산</option>
				<option value='한국씨티'>한국씨티</option>
				<option value='SC'>SC</option>
				<option value='수협'>수협</option>
				<option value='신협'>신협</option>
				<option value='우체국'>우체국</option>
				<option value='새마을금고'>새마을금고</option>
				<option value='케이뱅크'>케이뱅크</option>
				<option value='카카오뱅크'>카카오뱅크</option>
			</select></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">출금계좌번호</td>
      <td>      
      
      <%
      
       request.setCharacterEncoding("euc-kr");

      Class.forName("org.postgresql.Driver");
      
      String url = "jdbc:postgresql://localhost:5432/postgres";
      String id = "postgres";
      String pass = "dkssudelwlahs";

	   Connection conn = DriverManager.getConnection(url,id,pass); 
	   ResultSet rs = null;
	   
	   PreparedStatement pstmt = conn.prepareStatement("SELECT accnum FROM account WHERE owner = 'minji'");

	   rs = pstmt.executeQuery();
       %>
      <select name="maccount">
      <option value="0" selected> 출금 계좌를 선택해주세요.</option>
      <%
      
      while(rs.next()){
    	  out.println("<option value=" + (rs.getString(1)) + ">" + rs.getString(1) + "</option>" );
      }
      rs.close();
      conn.close();
      %>
      </select></td>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">입금계좌번호</td>
      <td><input name="yaccount" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">이체금액</td>
      <td><input name="amount" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록" OnClick="javascript:writeCheck()">
       <input type=button value="취소" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
    </form>
</body>
</html>