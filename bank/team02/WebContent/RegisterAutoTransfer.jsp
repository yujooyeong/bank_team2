<%@ page language="java" contentType="text/html; charset=EUC-KR"
import="java.sql.*"
    pageEncoding="EUC-KR"%>
<script language = "javascript"> // �ڹ� ��ũ��Ʈ ����

function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.transdate.value )   // form �� �ִ� type ���� ���� ��
   {
    alert( "��� �������� �Է��ϼ���." ); // ���â ���
    form.maccount.focus();   // form �� �ִ� name ��ġ�� �̵�
    return;
   }
   
  if( !form.maccount.value )
   {
    alert( "��ݰ��¸� �Է��ϼ���" );
    form.maccount.focus();
    return;
   }

  if( !form.yaccount.value )
   {
    alert( "�Աݰ��¸� �Է��ϼ���" );
    form.yaccount.focus();
    return;
   }
  
  if( !form.amount.value )
  {
   alert( "��ü �ݾ��� �����ּ���" );
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
<title>�ڵ���ü��û</title>
</head>
<body>
<form name=writeform method=post action="auto_ok.jsp">
<table>
   <table width="65%" cellpadding="0" cellspacing="0" border="0">
    <td align="center">�ڵ���ü��û</td>
</table>
<table>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">��ü������</td>
      <td><select name="transdate">
				<option value=''>��ü������</option>
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
      <td align="center">��ü����</td>
      <td><select name="bank">
				<option value=''>��ü����</option>
				<option value='�츮'>�츮</option>
				<option value='����'>����</option>
				<option value='���'>���</option>
				<option value='����'>����</option>
				<option value='����'>����</option>
				<option value='�ϳ�'>�ϳ�</option>
				<option value='�λ�'>�λ�</option>
				<option value='�ѱ���Ƽ'>�ѱ���Ƽ</option>
				<option value='SC'>SC</option>
				<option value='����'>����</option>
				<option value='����'>����</option>
				<option value='��ü��'>��ü��</option>
				<option value='�������ݰ�'>�������ݰ�</option>
				<option value='���̹�ũ'>���̹�ũ</option>
				<option value='īī����ũ'>īī����ũ</option>
			</select></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">��ݰ��¹�ȣ</td>
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
      <option value="0" selected> ��� ���¸� �������ּ���.</option>
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
      <td align="center">�Աݰ��¹�ȣ</td>
      <td><input name="yaccount" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">��ü�ݾ�</td>
      <td><input name="amount" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="���" OnClick="javascript:writeCheck()">
       <input type=button value="���" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
    </form>
</body>
</html>