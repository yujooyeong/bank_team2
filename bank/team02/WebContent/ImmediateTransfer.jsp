<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<script language = "javascript"> // �ڹ� ��ũ��Ʈ ����

function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.type.value )   // form �� �ִ� type ���� ���� ��
   {
    alert( "�ŷ� ������ �����ϼ���" ); // ���â ���
    form.type.focus();   // form �� �ִ� name ��ġ�� �̵�
    return;
   }
   
  if( !form.bank.value )
   {
    alert( "��ü�� ������ �����ϼ���." );
    form.bank.focus();
    return;
   }
 
  if( !form.yaccount.value )
   {
    alert( "�Աݰ��¸� �Է����ּ���." );
    form.yaccount.focus();
    return;
   }
  
  if( !form.amount.value )
  {
   alert( "��ü �ݾ��� �Է����ּ���." );
   form.amount.focus();
   return;
  }
  
  if( !form.transpw.value )
  {
   alert( "��ü ��й�ȣ�� �Է����ּ���." );
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
<title>�����ü</title>
</head>
<body>
<table>
   <table width="70%" cellpadding="0" cellspacing="0" border="0">
    <td align="center">������ü</td>
    <td>&nbsp;</td>
</table>
<table>
<form name=writeform method=post action="Immediate_ok.jsp">
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">�ŷ�����</td>
      <td><select name="type">
				<option value=''>�ŷ�����</option>
				<option value='�޿�'>�޿�</option>
				<option value='����'>����</option>
				<option value='���'>���</option>
				<option value='�����'>�����</option>
				<option value='������'>������</option>
				<option value='ī����'>ī����</option>
				<option value='�����ȯ'>�����ȯ</option>
			</select>
			</td>
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
	   
	   PreparedStatement pstmt = conn.prepareStatement("SELECT accnum FROM account WHERE owner = 'jiyeon'");

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
      </select>
      </td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">�Աݰ��¹�ȣ</td>
      <td><input name="yaccount" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">��ݾ�</td>
      <td><input name="amount" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
 <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">��ü ��й�ȣ</td>
      <td><input name="transpw" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
      </tr>
     
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="��ü����" OnClick="javascript:writeCheck()">
       <input type=button value="���" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     
     </tr>
     </form>
    </table>
</body>
</html>