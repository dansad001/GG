<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootswatch: Sandstone</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="css/carousel.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script sr=q"../bower_components/html5shiv/dist/html5shiv.js"></script>
      <script src="../bower_components/respond/dest/respond.min.js"></script>
    <![endif]-->
    
<style>
.navbar{
	height:90px;
}

.carousel .item {
	width: 989px; 
    height: 309px;
     
}
h3{
font-weight: bolder;
display: inline;
}
h5{
display: inline;
}

</style>
  </head>
  <body style="padding-top:0px;"">
  <!-- nav bar -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-success" >
		  <div class="container">
			<a class="navbar-brand" href="#">Maejo University</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor01" aria-controls="navbarColor01"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor01">
			<div class="btn-group" role="group" aria-label="Basic example">

				<ul class="navbar-nav mr-auto">
					
					<li class="nav-item"><button type="button" class="btn btn-success">เกี่ยวกับมหาวิทยาลัย</button>
					</li>
					<li class="nav-item"><button type="button" class="btn btn-success">หน่วยงาน</button>
					</li>
					<li class="nav-item"><button type="button" class="btn btn-success">การศึกษา</button>
					</li>
					<li class="nav-item"><button type="button" class="btn btn-success">วิจัยและบริการวิชาการ</button>
					</li>
					<li class="nav-item"><button type="button" class="btn btn-success">รอบรั้วมหาวิทยาลัย</button>
					</li>
				</ul></div>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search">
					<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		  </div>
		</nav>
	<!-- end navbar -->

	<!-- carousel -->
	<div class="container" >
		<div id="myCarousel" class="carousel slide" data-ride="carousel" >
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class=""></li>
          <li data-target="#myCarousel" data-slide-to="1" class=""></li>
          <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item">
            <img class="item" src="img/c1.jpg" alt="First slide">  
          </div>
          <div class="carousel-item">
            <img class="item" src="img/c2.jpg" alt="Second slide">
          </div>
          <div class="carousel-item active">
            <img class="item" src="img/c3.jpg" alt="Third slide"> 
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
        <hr>
      </div>
	<!-- end carousel -->
	
	<!-- event -->
		<div class="card " style="background-color:#f7f7f7">
			<h3 class="card-header" ><font color="#3FB618">Event</font></h3>
			<div class="card-footer text-muted">

				<table width="100%" height="325" border="0" cellpadding="10"
					cellspacing="10">
					<tbody>
						<tr>
							<td align="center" valign="top"><iframe
									src="https://erp.mju.ac.th/iframe/informationList.aspx?topNumber=8&amp;informationTypeID=7&amp;colNumber=2"
									frameborder="0" scrolling="No" width="100%" height="400"
									align="top"></iframe></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	<!-- end event -->
		<hr>
	
	<!-- calendar -->	
		<div class="card " style="background-color:#f7f7f7">
			<h3 class="card-header" ><font color="#3FB618">ปฏิทินกิจกรรม</font></h3>
				<div class="card text-black bg-light">
					<div class="card-body">
						 <h3><font style="font-size: 2rem; " color="green">5</font></h3>
						 <h5>&nbsp;ธ.ค. 2017 <h3><font style="font-size: 1.640625rem;">|</font></h3> วันคล้ายวันพระราชสมภพ รัชกาลที่ 9</h5>
					<hr>
						 <h3><font style="font-size: 2rem; " color="green">7</font></h3>
						 <h5>&nbsp;ธ.ค. 2017 <h3><font style="font-size: 1.640625rem;">|</font></h3> 40 ปี พืชผักแม่โจ้</h5>
					<hr>
						 <h3><font style="font-size: 2rem; " color="green">11</font></h3>
						 <h5>&nbsp;ธ.ค. 2017 <h3><font style="font-size: 1.640625rem;">|</font></h3> หยุดชดเชยวันรัฐธรรมนูญ</h5>
					<hr>
						 <h3><font style="font-size: 2rem; " color="green">1-2</font></h3>
						 <h5>&nbsp;ม.ค. 2018 <h3><font style="font-size: 1.640625rem;">|</font></h3> วันขึ้นปีใหม่ 2561</h5>
					
					</div>

				</div>
		</div>
	<!-- end calendar -->	
		<hr>

	<!-- mju channel, mju on tv, mju link -->
		<ul class="nav nav-tabs" >
			<li class="nav-item"><a class="nav-link  active text-success" data-toggle="tab"
				href="#home" ><h3>MJU CHANNEL</h3></a></li>
			<li class="nav-item " ><a class="nav-link text-success"
				data-toggle="tab" href="#profile"><h3>MJU ON TV</h3></a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-success" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"><h3>MJU LINK</h3></a>
				<div class="dropdown-menu" x-placement="bottom-start"
					style="position: absolute; transform: translate3d(0px, 40px, 0px); top: 0px; left: 0px; will-change: transform;">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a> <a
						class="dropdown-item" href="#">Something else here</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Separated link</a>
				</div></li>
		</ul>
		
		<div id="myTabContent" class="tab-content card " style="background-color:#f7f7f7">
			<div class="tab-pane fade in active show" id="home">
				<div class="card-body">
				<table width="100%"  border="0" cellpadding="10"
					cellspacing="10">
					<tbody>
						<tr>
							<td width="100%" align="center" valign="top"><iframe
									src="https://erp.mju.ac.th/iframe/informationList.aspx?topNumber=6&amp;informationTypeID=9&amp;colNumber=2"
									width="100%"
									scrolling="No" frameborder="0"> </iframe>
								<div align="center"></div>
							</td>
						</tr>
					</tbody>
				</table>
				</div>
				</div>			
						
			<div class="tab-pane fade " id="profile">
				<div class="card-body">
				<table width="100%"  border="0" cellpadding="10"
					cellspacing="10">
					<tbody>
							<tr>
								<td width="100%" valign="top" cellpadding="10" cellspacing="10"><iframe
										src="https://erp.mju.ac.th/iframe/informationList.aspx?topNumber=6&amp;informationTypeID=10&amp;colNumber=1"
										frameborder="0" scrolling="No" width="100%"
										align="left"></iframe></td>
							</tr>
						</tbody>
				</table>
				</div>
			</div>
			<div class="tab-pane fade" id="dropdown1">
				
			</div>
			<div class="tab-pane fade" id="dropdown2">
				
			</div>
		</div>
		
		<!-- end mju channel, mju on tv, mju link -->
		
		<hr><br><br>

	</div>
	
	<footer id="footer" class="text-white bg-success" style="padding-bottom:1rem;padding-top:1.5rem">
	<hr><br>
	  <div class="container" style="padding-bottom:0px;margin-bottom:0px;">
        <div class="row">
          <div class="col-lg-7">

            <ul class="list-unstyled">
						<div id="cmu_global_info" class="pull-left">
						   <br>
							<p>
								Copyright © 2017 Mae Jo University, All rights reserved.<br>
								by Information Technology Service Center
							</p>
							<p>
								Mae Jo University<br> 63, Amphoe San Sai, Chiang Mai<br>
								Thailand, 50200
							</p>
							<p>ติดต่อสอบถาม Tel. 053-873000</p>
						</div>
					</ul>
          
          </div>
           <div class="col-lg-5" align="center">
           		<img src="img/mju.png" height="150" width="150"><br>
           		<h5>มหาวิทยาลัยแม่โจ้ <br> มุ่งสู่การเป็นมหาวิทยาลัยเชิงนิเวศ</h5>
           </div>
        </div>
		</div>
		<br><hr>
      </footer>

	<script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>
