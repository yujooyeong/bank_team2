<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="team02.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
long maccount= 1;
int i = 0;
long [] clist;
clist = new long[10];

List<TxHistoryBean> list = TxHistoryDAO.selectTxHistory2(maccount);
Iterator<TxHistoryBean> iter = list.iterator();



while(iter.hasNext()) {
	TxHistoryBean temp = iter.next();
	clist[i] = temp.getMaccount();
	i++;

}

%>

<p>�˸� ���� ����</p>


<form name="form1" method="get" action="TN.jsp">
<select name ="account"> 
<%
	for (int j = 0; j<clist.length; j++){
		if(clist[j]!=0) out.println("<option value="+clist[j]+">"+clist[j]+"</option>");
	}
%>
</select>
<input type="submit" value="�߰�" name="submitbtn">
<input type="submit" value="����" name="submitbtn">

</form>
<button type="button" onclick="location.href='MAINpage.jsp' ">����ȭ��</button>
</body>
</html>