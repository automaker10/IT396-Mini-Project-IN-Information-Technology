<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>เพิ่มศูนย์ให้ความช่วยเหลือเสร็จสิ้น</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>


</head>
<body>

	<form action="/listallcenter" method="post">
		<c:set var="namecenter1" value="${fn:replace(namecenter, '%2F', '/')}" />
		<c:set var="namecenter2"
			value="${fn:replace(namecenter1, '%2C', ',')}" />
		<c:set var="namecenter3" value="${fn:replace(namecenter2, '+', ' ')}" />

		<div class="container">
			<center>
				<font color="#DA3E03"><h1>
						<b>ลบข้อมูลของ "${namecenter3}" เสร็จสิ้น</b>
					</h1></font>
			</center>
			<button type="submit">กลับหน้าแรก</button>

		</div>

	</form>
</body>
</html>