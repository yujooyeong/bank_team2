<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="team02.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>월간 거래 분석</title>
</head>
<body>
<div>
   <h1>월간 거래 분석</h1>
<button type="button" onclick="location.href='MAINpage.jsp' ">메인화면</button>
</div>
<%
		long aout=0;
		long ain= 0;
		
		int i = 0;
		int j = 0;
		
		long [] sumAo = new long[10];
		String [] sumBo = new String[10];
		
		long [] sumAi = new long[10];
		String [] sumBi = new String[10];
		
		long maccount=Integer.parseInt(request.getParameter("maccount"));
		int tyear = Integer.parseInt(request.getParameter("tyear"));
		int tmonth = Integer.parseInt(request.getParameter("tmonth"));
		
		List<TxHistoryBean> list1 = TxHistoryDAO.selectTxHistory(maccount, tyear, tmonth, "출금");
		Iterator<TxHistoryBean> iter1 = list1.iterator();
		
		List<TxHistoryBean> list2 = TxHistoryDAO.selectTxHistory(maccount, tyear, tmonth, "입금");
		Iterator<TxHistoryBean> iter2 = list2.iterator();
		
		List<TxHistoryBean> list3 = TxHistoryDAO.selectTxHistory3(maccount, tyear, tmonth, "출금");
		Iterator<TxHistoryBean> iter3 = list3.iterator();
		
		List<TxHistoryBean> list4 = TxHistoryDAO.selectTxHistory3(maccount, tyear, tmonth, "입금");
		Iterator<TxHistoryBean> iter4 = list4.iterator();
		
%>
<table>

<tr>
<%
	while(iter1.hasNext()) {
		TxHistoryBean temp = iter1.next();
		aout += temp.getAmount();
		
	}
	while(iter2.hasNext()) {
		TxHistoryBean temp = iter2.next();
		ain += temp.getAmount();
	}
	
	while(iter3.hasNext()) {
		TxHistoryBean temp = iter3.next();
		sumAo[i]=temp.getSum();
		sumBo[i]=temp.getBank();
		i++;

		
	}
	
	while(iter4.hasNext()) {
		TxHistoryBean temp = iter4.next();
		sumAi[j]=temp.getSum();
		sumBi[j]=temp.getBank();
		j++;
	}
	
%>
</tr>

</table>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load Charts and the corechart package.
      google.charts.load('current', {'packages':['corechart']});
      google.charts.load('current', {'packages':['table']});
      google.charts.setOnLoadCallback(drawChart1);
      google.charts.setOnLoadCallback(drawChart2);
      google.charts.setOnLoadCallback(drawChart3);
      google.charts.setOnLoadCallback(drawTable1);
      google.charts.setOnLoadCallback(drawTable2);

      function drawChart1() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'depositWithdrawal');
        data.addColumn('number', '금액');
        data.addRows([
          ['출금', <%out.println(aout);%>],
          ['입금', <%out.println(ain);%>]
        ]);

        var options = {title:'입금/출금현황', width:500, height:300};

        var chart = new google.visualization.BarChart(document.getElementById('Chart1_div'));
        chart.draw(data, options);
      }

      function drawChart2() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', '은행');
        data.addColumn('number', '금액');
        data.addRows([
                      <%out.println("[\'"+sumBo[0]+"\',"+sumAo[0]+"]");%>        
                      <%for(int n=1;n<10;n++) out.println(",[\'"+sumBo[n]+"\',"+sumAo[n]+"]");%>
        ]);

        // Set options for Anthony's pie chart.
        var options = {title:'출금거래 분석',width:500,height:300};

        // Instantiate and draw the chart for Anthony's pizza.
        var chart = new google.visualization.PieChart(document.getElementById('Chart2_div'));
        chart.draw(data, options);
      }
      function drawChart3() {
          var data = new google.visualization.DataTable();
          data.addColumn('string', '은행');
          data.addColumn('number', '금액');
          data.addRows([
                        <%out.println("[\'"+sumBi[0]+"\',"+sumAi[0]+"]");%>        
                        <%for(int n=1;n<10;n++) out.println(",[\'"+sumBi[n]+"\',"+sumAi[n]+"]");%>
          ]);

          // Set options for Anthony's pie chart.
          var options = {title:'입금거래 분석',width:500,height:300};

          // Instantiate and draw the chart for Anthony's pizza.
          var chart = new google.visualization.PieChart(document.getElementById('Chart3_div'));
          chart.draw(data, options);
        }
      function drawTable1() {
          var data = new google.visualization.DataTable();
          data.addColumn('string', '내용');
          data.addColumn('number', '금액');
          data.addRows([

                        <%out.println("[\'"+sumBo[0]+"\',"+sumAo[0]+"]");%>        
                        <%for(int n=1;n<10;n++){
                        	if(sumAo[n]!=0)out.println(",[\'"+sumBo[n]+"\',"+sumAo[n]+"]");}%>
          ]);

          var table = new google.visualization.Table(document.getElementById('Table1_div'));
          table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
        }
      function drawTable2() {
          var data = new google.visualization.DataTable();
          data.addColumn('string', '내용');
          data.addColumn('number', '금액');
          data.addRows([
                        <%out.println("[\'"+sumBi[0]+"\',"+sumAi[0]+"]");%>        
                        <%for(int n=1;n<10;n++){
                        	if(sumAi[n]!=0)out.println(",[\'"+sumBi[n]+"\',"+sumAi[n]+"]");};%>
          ]);

          var table = new google.visualization.Table(document.getElementById('Table2_div'));
          table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
        }
    </script>
        <table class="columns">
      <tr align="center">
      	<td  style="border:1px solid #ccc">
      	<p> 
      	<%out.println(tyear+"년 "+tmonth+"월 ");%>
      	</p>
      	</td>
      </tr>
      <tr>
        <td><div id="Chart1_div" style="border: 1px solid #ccc"></div></td>
      </tr><tr>
      	<td>
      	<p></p>
      	</td>
      </tr>
      <tr align="center">
      	<td  style="border:1px solid #ccc">
      	<p> 
      	출금 거래 분석
      	</p>
      	</td>
      </tr>
      <tr>
      	<td><div id="Chart2_div" style="border: 1px solid #ccc"></div></td>
      </tr>
      <tr>
      	<td><div id="Table1_div" style="border: 1px solid #ccc"></div></td>
      </tr>
      <tr>
      	<td>
      	<p>     	</p>
      	</td>
      </tr>
      <tr align="center">
      	<td  style="border:1px solid #ccc">
      	<p> 
      	입금 거래 분석
      	</p>
      	</td>
      </tr>         
      <tr>
      	<td><div id="Chart3_div" style="border: 1px solid #ccc"></div></td>
      </tr>
      <tr>
      	<td><div id="Table2_div" style="border: 1px solid #ccc"></div></td>
      </tr>            
    </table>
</body>
</html>