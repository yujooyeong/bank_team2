<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<script language = "javascript"> // 자바 스크립트 시작

function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.type.value )   // form 에 있는 type 값이 없을 때
   {
    alert( "거래 종류를 선택하세요" ); // 경고창 띄움
    form.type.focus();   // form 에 있는 name 위치로 이동
    return;
   }
   
  if( !form.bank.value )
   {
    alert( "이체할 은행을 선택하세요." );
    form.bank.focus();
    return;
   }
 
  if( !form.yaccount.value )
   {
    alert( "입금계좌를 입력해주세요." );
    form.yaccount.focus();
    return;
   }
  
  if( !form.amount.value )
  {
   alert( "이체 금액을 입력해주세요." );
   form.amount.focus();
   return;
  }
  
  if( !form.transpw.value )
  {
   alert( "이체 비밀번호를 입력해주세요." );
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
<title>즉시이체</title>
</head>
<body>
<table>
   <table width="70%" cellpadding="0" cellspacing="0" border="0">
    <td align="center">계좌이체</td>
    <td>&nbsp;</td>
</table>
<table>
<form name=writeform method=post action="Immediate_ok.jsp">
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">거래종류</td>
      <td><select name="type">
				<option value=''>거래종류</option>
				<option value='급여'>급여</option>
				<option value='저축'>저축</option>
				<option value='사업'>사업</option>
				<option value='보험료'>보험료</option>
				<option value='공과금'>공과금</option>
				<option value='카드대금'>카드대금</option>
				<option value='대출상환'>대출상환</option>
			</select>
			</td>
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
	   
	   PreparedStatement pstmt = conn.prepareStatement("SELECT accnum FROM account WHERE owner = 'jiyeon'");

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
      </select>
      </td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">입금계좌번호</td>
      <td><input name="yaccount" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">출금액</td>
      <td><input name="amount" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
 <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">이체 비밀번호</td>
      <td><input name="transpw" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
      </tr>
     
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="이체진행" OnClick="javascript:writeCheck()">
       <input type=button value="취소" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     
     </tr>
     </form>
    </table>
</body>
</html>