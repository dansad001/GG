<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ระเบียบ ข้อตกลง สำหรับการลงทะเบียน</title>
<style type="text/css">
body {
	font-size: 14px
}

table {
	line-height: 25px;
}

table td {
	padding-left: 5px;
	padding-right: 5px;
	height: 25px
}

.red {
	color: red;
	font-weight: bold
}
</style>
</head>
<body>
	<form id="form1" name="form1">
		<table width="800" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tbody>
				<tr>
					<td height="25" align="center" class="red"><span
						style="font-size: 20px">ระเบียบ ข้อตกลง สำหรับการลงทะเบียน</span></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>1.รายวิชาใดที่กำหนดให้มีรายวิชาบังคับก่อน นักศึกษาจะ<span
						class="red">ต้องสอบผ่านรายวิชาบังคับก่อน</span>
						แล้วจึงจะลงทะเบียนรายวิชานั้นได้
						มิฉะนั้นถือว่าการลงทะเบียนรายวิชานั้นเป็น<span class="red">โมฆะ</span>
						และไม่ได้รับเงินค่าลงทะเบียนคืน (ในกรณีที่นักศึกษาชำระเงินไปแล้ว)<br></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>2. นักศึกษาจะต้องลงทะเบียน <span class="red">ไม่น้อยกว่า
							9 หน่วยกิตแต่ไม่เกิน 22 หน่วยกิต</span> และไม่เกิน 25 หน่วยกิต
						สำหรับผู้ที่จะจบในเทอมนั้น ๆ
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>3. <span class="red">รหัสผ่าน</span>เข้าสู่ระบบ
						ให้นักศึกษาเปลี่ยนรหัสผ่าน <span class="red">และเก็บไว้เป็นความลับ</span>
						ห้ามมิให้ผู้ื่อื่นทำรายการแทนโดยเด็ดขาด หากเกิดข้อผิดพลาด
						ในการลงทะเบียน นักศึกษาจะต้องเป็นผู้รับผิดชอบในข้อผิดพลาดนั้น ๆ
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>หมายเหตุ</td>
				</tr>
				<tr>
					<td>*นักศึกษาที่ลงทะเบียนต่ำหรือสูงกว่าเกณฑ์ (&lt;9 หรือ
						&gt;22 หน่วยกิต) ให้ส่งแบบฟอร์ม มจท.32 ที่งานทะเบียน
						หลังจากลงทะเบียนเรียบร้อย</td>
				</tr>
				<tr>
					<td>*หากไม่มีรายวิชาที่สามารถลงทะเบียนได้ ให้ลงทะเบียนรายวิชา
						<span class="red">ทบ100</span> ไว้ก่อน
						ระบบจึงจะไม่คิดค่าปรับลงทะเบียนล่าช้า
					</td>
				</tr>
				<tr>
					<td>*นักศึกษาที่ใช้<span class="red">รหัสผ่านของผู้อื่น</span>
						เข้าทำการใด ๆ หากสอบสวนแล้วถูกจับได้ จะถูกดำเนินคดีตาม <span
						class="red">พรบ. คอมพิวเตอร์</span></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td align="center"><input name="chk1" type="checkbox"
						id="chk1" value="checkbox"
						onclick="if(document.form1.chk1.checked==true){document.form1.okbtn.disabled=false}else{document.form1.okbtn.disabled=true}">
						รับทราบกำหนดการและพร้อมปฏิบัติตามกำหนดการและเงื่อนไขทั้งหมดข้างต้น
					</td>
				</tr>
				<tr>
					<td align="center">
					<form action="" method="">
							<input name="okbtn" type="button" id="okbtn" value="รับทราบ" disabled="">
						</form>
					</td>
					
				</tr>
			</tbody>
		</table>
	</form>


</body>