<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Care and cure hospitality</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.header {
	padding: 0.5px;
	background-color: #e3dddf;
}
.topnav {
	background-color: #333;
	overflow: hidden;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: red;
	color: black;
}

body {
	background-color: #e1ddb7;
	font-family: "Lato", sans-serif;
	min-height: 100vh;
	margin: 0;
}

p {
	font-size: 30.5px;
	color: black;
	top-marign: 0px;
}

.active {
	background-color: #4CAF50;
	font-color: black;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: #333;
	font-family: inherit;
	/* Important for vertical align on mobile phones */
	margin: 0; /* Important for vertical align on mobile phones */
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
	color: black;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
.para
{
padding:20px;
}
.para1
{
padding:5px 0 0 5px;
}
</style>
</head>
<body>
<%
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
%>
<div class="header">
		<p align="center">
			<img src="medical.png" width="50" height="50" align="left" /> <b>
				CARE AND CURE HOSPITAL</b> <img src="medical.png" width="50" height="50"
				align="right" />
		</p>
</div>
<div class="topnav">
		<a class="active" href="home.jsp"><i class="fa fa-home"> Home</i></a>
		<a href="sample.jsp"><i class="fa fa-user">Profile</i></a> 
		<a href="app.jsp"><i class="fa fa-calendar-check-o">Appointments today</i></a> 
		<a style="float:right;" href="logout.jsp"><i class="fa fa-power-off">logout</i></a>
</div>
<div class="para">
<b style="color:red;">Allergists/Immunologists:</b><br>
<div class="para1">They treat immune system disorders such as asthma, eczema, food allergies, insect sting allergies, and some autoimmune diseases.</div>
<br>
<br>
<b style="color:red;">Anesthesiologists:</b><br>
<div class="para1">These doctors give you drugs to numb your pain or to put you under during surgery, childbirth, or other procedures. They monitor your vital signs while you’re under anesthesia.
</div>
<br>
<br>
<b style="color:red;">Cardiologists:</b><br>
<div class="para1">They’re experts on the heart and blood vessels. You might see them for heart failure, a heart attack, high blood pressure, or an irregular heartbeat.
</div>
<br>
<br>
<b style="color:red;">Colon and Rectal Surgeons:</b><br>
<div class="para1">You would see these doctors for problems with your small intestine, colon, and bottom. They can treat colon cancer, hemorrhoids, and inflammatory bowel disease. 
</div>
<br>
<br>
<b style="color:red;">Critical Care Medicine Specialists:</b><br>
<div class="para1">They care for people who are critically ill or injured, often heading intensive care units in hospitals. You might see them if your heart or other organs are failing or if you’ve been in an accident. 
</div>
<br>
<br>
<b style="color:red;">Dermatologists:</b><br>
<div class="para1">Have problems with your skin, hair, nails? Do you have moles, scars, acne, or skin allergies? Dermatologists can help.
</div>
<br>
<br>
<b style="color:red;">Endocrinologists:</b><br>
<div class="para1">These are experts on hormones and metabolism. They can treat conditions like diabetes, thyroid problems, infertility, and calcium and bone disorders.
</div>
<br>
<br>
<b style="color:red;">Emergency Medicine Specialists:</b><br>
<div class="para1">These doctors make life-or-death decisions for sick and injured people, usually in an emergency room. Their job is to save lives and to avoid or lower the chances of disability.
</div>
<br>
<br>
<b style="color:red;">Family Physicians:</b><br>
<div class="para1">They care for the whole family, including children, adults, and the elderly. They do routine checkups and screening tests, give you flu and immunization shots, and manage diabetes and other ongoing medical conditions.
</div>
<br>
<br>
<b style="color:red;">Gastroenterologists:</b><br>
<div class="para1">They’re specialists in digestive organs, including the stomach, bowels, pancreas, liver, and gall bladder. You might see them for abdominal pain, ulcers, diarrhea, jaundice, or cancers in your digestive organs. They also do a colonoscopy and other tests for colon cancer.
</div>
<br>
<br>
<b style="color:red;">Geriatric Medicine Specialists:</b><br>
<div class="para1">These doctors care for the elderly. They can treat people in their homes, doctors' offices, nursing homes, assisted-living centers, and hospitals.
</div>
<br>
<br>
</div>
</body>
</html>