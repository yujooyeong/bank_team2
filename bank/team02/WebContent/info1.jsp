<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="team02.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����ONE���� ����</title>
</head>
<body>
<form name="form" method="post" action="acc_insert1.jsp">
<table border="0" cellpadding="1" cellspacing="0">
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">��ǰ��</font>
		</td>
		<td width="195">
			<p><font size="2">&nbsp KB����ONE����
			</font>
		</td>
	</tr>
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">�̸�</font>
		</td>
		<td width="195">
			<p><font size="2">
			<input type="text" name="name" maxlength="20">
			</font>
		</td>
	</tr>
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">�ŷ�����</font>
		</td>
		<td width="195">
			<p><font size="2">
			<select name="goal">
				<option value=''>�ŷ�����</option>
				<option value='�޿� �� ��Ȱ��'>�޿� �� ��Ȱ��</option>
				<option value='���� �� ����'>���� �� ����</option>
				<option value='����� �ŷ�'>����� �ŷ�</option>
				<option value='����� ����'>����� ����</option>
				<option value='������ ����'>������ ����</option>
				<option value='ī����'>ī�� ���</option>
				<option value='��������� ��ȯ'>��������� ��ȯ</option>
				<option value='��������� �ŷ�'>��������� �ŷ�</option>
			</select>
			</font>
		</td>
	</tr>
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">�ŷ��ڱ��� ��õ</font>
		</td>
		<td width="195">
			<p><font size="2">
			<select name="origin">
				<option value=''>�ŷ��ڱ��� ��õ</option>
				<option value='�ٷ� �� ���ݼҵ�'>�ٷ� �� ���ݼҵ�</option>
				<option value='�����ҵ�'>�����ҵ�</option>
				<option value='����ҵ�'>����ҵ�</option>
				<option value='�ε��� �Ӵ�ҵ�'>�ε��� �Ӵ�ҵ�</option>
				<option value='�ε��� �� �絵�ҵ�'>�ε��� �� �絵�ҵ�</option>
				<option value='�����ҵ�(���� �� ���)'>�����ҵ�(���� �� ���)</option>
				<option value='���/����'>���/����</option>
				<option value='�Ͻ� ���絵�� ���� �ҵ�'>�Ͻ� ���絵�� ���� �ҵ�</option>
			</select>
			</font>
		</td>
	</tr>
	<tr>
		<td>
			<p align="right">
			<font size="2">�Ǽ����� ����</font>
		</td>
		<td width="195">
			<p><font size="2">
				<input type="radio" name="isowner" value="Y">Y&nbsp<input type="radio" name="isowner" value="N">N
			</font>
		</td>
	</tr>
	<tr>
		<td>
			<p align="right">
			<font size="2">������� ����</font>
		</td>
		<td>
			<p><font size="2">
				<input type="radio" name="isagree" value="Y">Y&nbsp<input type="radio" name="isagree" value="N">N
			</font>
		</td>
	</tr>
</table>
<input type="submit" name="submit" value="Ȯ��"/>
</form>
</body>
</html>