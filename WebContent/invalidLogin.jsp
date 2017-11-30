<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv=refresh content=5;URL=login.html>

<title>Insert title here</title>
</head>
<body onLoad="begintimer()">
<script > 

var limit="0:6"
if (document.images){
var parselimit=limit.split(":")
parselimit=parselimit[0]*60+parselimit[1]*1
}
function begintimer(){
if (!document.images)
return
if (parselimit==1)
// เหตุการณ์ที่ต้องการให้เกิดขึ้น
// window.location='page.php'; ถ้าต้องการให้กระโดดไปยัง Page อื่น
frmTest.submit();
else{
parselimit-=1
curmin=Math.floor(parselimit/60)
cursec=parselimit%60
if (curmin!=0)
curtime=cursec
else
if(cursec==0)
{
alert('หมดเวลาแล้วจ้า');
}
else
{
curtime="<h4> System will go to Login page in "+cursec+" sec.</h4>"
}
document.getElementById('dplay').innerHTML = curtime;
setTimeout("begintimer()",1000)
}
}

</script>
<body onLoad="begintimer()" >
	<br><br><br><br><br><br>
	<br><br><br>
	

	<div class="col-md-3"></div>
	<div class="col-md-6"
				style="padding: 30px; margin: 30px; border-radius: 10px; border-style: solid;">
	<center>
		<div style="color:red" >
		<h1>Invalid Login</h1>
		 <div id="dplay"></div>
		</div>
	</center>
	</div>
</body>
</html>