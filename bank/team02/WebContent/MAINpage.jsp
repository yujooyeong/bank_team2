<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
			<title>����ȭ��</title>
			<style type="text/css">
				.header {
					width: 100vw;
					display: flex;
					flex-direction: column;
				}
				
				.title {
					display: flex;
					justify-content: center;
					font-family:arial;
				}
				
				.navbar {
					display: flex;
					flex-wrap: nowrap;
					justify-content: space-around;
					align-item:center;
					height:50px
				}
				
				.btn_box {
					width:140px;
					height:50px;
					
					float:left;
					text-align:center;
					cursor:pointer;
					position:relative;
					box-sizing:border-box;
					overflow:hidden;
					
				}
				.btn_box .btn {
					font-family:arial;
					font-size:16px;
					color:#34495e;
				 	text-decoration:none;
					line-height:50px;
					transition:all .5s ease;
					z-index:2;
					position:relative;
				}
				.eff-7 {
					width:140px;
					height:50px;
					border:0px solid #34495e;
					position:absolute;
					transition:all .5s ease;
					z-index:1;
					box-sizing:border-box;
				}
				
				.btn_box:hover .eff-7 {
					border:70px solid #34495e;
					height:50px;'
				}
				.btn_box:hover .btn {
					color:#fff;
				}
				
				.btn {


				}
				
				.main_image {
					width: 100vw;
					height: 80vh;
					background-image: url('image/main.jpg'); 
					
				}
				
				.footer {
					width:100vw;
					height: 20vh;
				}
				
				.information {
					height:20vh;
					display: flex;
					flex-wrap: nowrap;
					justify-content: space-around;
					align-items:center;
				}
			</style>
		</head>
		<body>
			<div class="header">
				<div class="title">
					<h1>2�� ����ý���</h1>
				</div>
				
				<div class="navbar">
					<div class=btn_box>
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='bank_index.jsp'">���� ���°���</div>
					</div>
					<div class=btn_box>
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='ImmediateTransfer.jsp'">�����ü</div>
					</div>
					<div class=btn_box>
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='RegisterAutoTransfer.jsp'">�ڵ���ü��û</div>
					</div>
					<div class=btn_box>
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='ModifyAutoTransfer.jsp.jsp'">�ڵ���ü����</div>
					</div>
					<div class=btn_box>
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='boardlist.jsp'">���ǻ���</div>
					</div>
				</div>
				<div class="navbar">
					<div class="btn_box">
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='txAnalysisMain.jsp'">������ȸ</div>
					</div>
					<div class="btn_box">
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='txAnalysisMain.jsp'">�����ŷ��м�</div>
					</div>
					<div class="btn_box">
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='TNmain.jsp'">�˸�����</div>
					</div>
					<div class="btn_box">
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='txAnalysisMain.jsp'">ȯ����ȸ</div>
					</div>
					<div class="btn_box">
						<div class="eff-7"></div>
						<div class="btn"  OnClick="window.location='txAnalysisMain.jsp'">����ã��</div>
					</div>
				</div>
			</div>
			<hr />
			<div class="body">
				<div class="main_image">
					
				</div>
			</div>
			<div class="footer">
				<div class="information">
					<table>
						<colgroup>
							<col width="50%">
							<col width="50%">
						</colgroup>
						<tr>
							<td>
								���� �ð� : 09:00 ~ 16:00
							</td>
							<td>
								���ڱ������ ���� <span>1588-1234</span>
							</td>
						</tr>
					</table>
				</div>
			
			</div>
		</body>
	</html>