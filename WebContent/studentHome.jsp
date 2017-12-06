<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page language="java" session="true" %>
<%@ page import="Bean.userBean" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Hogwarts School of Witchcraft and Wizardry</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="screen">
    <link rel="stylesheet" type="text/css" href="css/custom.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- HTML5 shi and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../bower_components/html5shiv/dist/html5shiv.js"></script>
      <script src="../bower_components/respond/dest/respond.min.js"></script>
    <![endif]-->
   
<style>

</style>
  </head>
  <body style="padding-top:0px;background-color:#ababab">

	<div class="container">
		<!-- page table start -->
		<table border="0" cellspacing="0" cellpadding="0" width="100%"
			bgcolor="#FFFFFF">
			<tbody>
				<tr>
					<td valign="top">

						<div id="content" width="100%">
							<div id="head">
							  <!-- head img -->
								<img alt="" src="img/home.jpg">
							</div>
						</div>


						<div id="page">
						
						<!-- form start -->
							<form method="POST" action="" name="FRM_LANG"></form>

							<table width="100%" height="0" border="0" cellpadding="0"
								cellspacing="0" bordercolor="green" bgcolor="#3B3B3B">
								<tbody>
									<tr valign="left">
										<td align="left">
											<div class="ultimatedropdown"></div>

										</td>
									</tr>

								</tbody>
							</table>
							<table height="2px" width="100%" border="0" cellpadding="0"
								cellspacing="0" bordercolor="#FFBA00" bgcolor="#FFBA00">
								<tbody>
									<tr>
										<td></td>
									</tr>
								</tbody>
							</table>

							<div id="myDiv"></div>
							<table border="0" width="100%" height="100%" cellpadding="0"
								cellspacing="0" bordercolor="red">
								<tbody>
									<tr valign="TOP">


										<!-- Begin Menu -->
										<td width="200px"style="background-color: #e2e2e2; border-left: 1px solid black; border-right: 1px solid black">
											<div id="title" class="boxed">
												<h1 style="margin-bottom: 0px;" class="title">เมนูหลัก</h1>
											</div>
											<div id="menu" class="style4">
												<ul>
													<li><a href="LogoutServlet?logout=value"><font
															color="#ff0000">ออกจากระบบ</font></a></li>
													<li><a href="changepwd.">เปลี่ยนรหัสผ่าน</a></li>
													<li><a href="">ลงทะเบียน</a></li>
													<li><a href="enroll_result.asp?">ผลการลงทะเบียน</a></li>
													<li><a href="time_table.asp?avs1052526022=4">ตารางเรียน/สอบ</a></li>

													<li><a href="grade.asp?avs1052526022=4">ผลการศึกษา</a></li>

													<li></li>

													

													<li><a href="studentByProgram.asp?avs1052526022=4">ทะเบียนรายชื่อ</a></li>
													<li><a
														href="webuser_list.asp?cmd=1&amp;avs1052526022=4">ประวัติการเข้าใช้ระบบ</a></li>

												</ul>
											</div>
										</td>
										<!-- End Menu -->
										<!-- Begin Page Detail -->


										<td width="730" valign="top" class="normalDetail">

											<table border="0" cellspacing="2" cellpadding="0"
												class="username">
												<tbody>
													<tr >
														<td width="20"></td>
														<!-- ============= ชื่อ นักศึกษา ============== -->
														<td style="padding-top:5px"><b><%=session.getAttribute("stdid")%></b> <b>: <font color="#000070">
														<%=session.getAttribute("name")%></font></b></td>
													</tr>
												</tbody>
											</table>
											<hr style="margin-top:5px;border-top: 1px solid #8c8b8b; margin-left:15px;width:70%">
										<table border="0" class="normalDetail">
												<tbody>
													<tr>
														<td width="10"></td>
														<td class="pagename"><b>ยินดีต้อนรับเข้าสู่ระบบบริการการศึกษา</b>&nbsp;<br>
														<br>
														<br></td>
													</tr>
												</tbody>
											</table>
											<br>
										<table border="0" cellspacing="0" cellpadding="0"
												class="normalDetail">
												<tbody>
													<tr>
														<td width="30"></td>
														<td><font color="#FF8000"></font></td>
													</tr>
													<tr>
														<td></td>
														<td class="pageName"><font color="#FF8000"><b>ระบบบริการการศึกษา</b></font></td>
													</tr>
													<tr>
														<td></td>
														<td><font color="#FF8000"><i>ผ่ า น เ ค รื
																	อ ข่ า ย อิ น เ ท อ ร์ เ น็ ต . . .</i></font></td>
													</tr>
												</tbody>
											</table>
											<br>
										<br>
										<br>
										<table class="normalDetail">
												<tbody>
													<tr>
														<td width="10"></td>
														<td><a href="../registrar/download/examnotice.pdf">โปรดอ่าน
																คำชี้แจงพฤติกรรมและบทลงโทษการทุจริตสอบ</a></td>
													</tr>
												</tbody>
											</table>
											<br>
										<br>
										<table class="normalDetail">
												<tbody>
													<tr>
														<td width="10"></td>
														<td></td>
													</tr>
													<!-- add space for detail -->
													<tr>
														<td height="100" colspan="4"></td>
													</tr>
													<!--  -->
												</tbody>
											</table> <!-- End Page Detail -->
										</td>
										<td height="400"></td>
									</tr>
									
								</tbody>
							</table>


							<div style="clear: both"></div>

							<table id="foot" border="0" width="100%" height="30" bgcolor="#3B3B3B" style="color:white;">
								<tbody>
									<tr>
										<td align="center" width="200px" class="footertext"> &nbsp;&nbsp; งานทะเบียน Hogwarts
											</td>
										<td class="footertext">&nbsp;&nbsp; Contact Staff : กลุ่มภารกิจทะเบียนเรียน  088-2691049
											</td>
										<td></td>
										<td class="footertext" align="right"></td>
									</tr>
								</tbody>
							</table>


						</div>
					</td>
				</tr>
			</tbody>
		</table>


	</div>
	<%
	userBean userBean = (userBean)session.getAttribute("currentUser");
	if(userBean == null){
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/need_auth.html");

		if (dispatcher != null) {

			dispatcher.forward(request, response);

		}
	}
	
	%>
	<script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/logout.js"></script>
    
  </body>
</html>
