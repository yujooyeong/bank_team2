<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="team02.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>국민ONE통장 가입</title>
</head>
<body>
<form name="form" method="post" action="acc_insert1.jsp">
<table border="0" cellpadding="1" cellspacing="0">
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">상품명</font>
		</td>
		<td width="195">
			<p><font size="2">&nbsp KB국민ONE통장
			</font>
		</td>
	</tr>
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">이름</font>
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
			<font size="2">거래목적</font>
		</td>
		<td width="195">
			<p><font size="2">
			<select name="goal">
				<option value=''>거래목적</option>
				<option value='급여 및 생활비'>급여 및 생활비</option>
				<option value='저축 및 투자'>저축 및 투자</option>
				<option value='사업상 거래'>사업상 거래</option>
				<option value='보험료 납부'>보험료 납부</option>
				<option value='공과금 납부'>공과금 납부</option>
				<option value='카드대금'>카드 대금</option>
				<option value='대출원리금 상환'>대출원리금 상환</option>
				<option value='상속증여성 거래'>상속증여성 거래</option>
			</select>
			</font>
		</td>
	</tr>
	<tr>
		<td width="75">
			<p align="right">
			<font size="2">거래자금의 원천</font>
		</td>
		<td width="195">
			<p><font size="2">
			<select name="origin">
				<option value=''>거래자금의 원천</option>
				<option value='근로 및 연금소득'>근로 및 연금소득</option>
				<option value='퇴직소득'>퇴직소득</option>
				<option value='사업소득'>사업소득</option>
				<option value='부동산 임대소득'>부동산 임대소득</option>
				<option value='부동산 등 양도소득'>부동산 등 양도소득</option>
				<option value='금융소득(이자 및 배당)'>금융소득(이자 및 배당)</option>
				<option value='상속/증여'>상속/증여</option>
				<option value='일시 재산양도로 인한 소득'>일시 재산양도로 인한 소득</option>
			</select>
			</font>
		</td>
	</tr>
	<tr>
		<td>
			<p align="right">
			<font size="2">실소유자 여부</font>
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
			<font size="2">약관동의 여부</font>
		</td>
		<td>
			<p><font size="2">
				<input type="radio" name="isagree" value="Y">Y&nbsp<input type="radio" name="isagree" value="N">N
			</font>
		</td>
	</tr>
</table>
<input type="submit" name="submit" value="확인"/>
</form>
</body>
</html>