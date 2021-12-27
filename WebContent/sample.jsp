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
table
{
border-collapse: collapse;
background-color:rgba(0,0,0,.10);
padding:40px;
position:absolute;
top:45%;
left:29%;
width:50%;
}
th, td {
  padding: 15px;
  text-align: left;
}
 .samp
       {
       position:absolute;
       top:45%;
       left:30%;
       padding:20px;
       width:250px;
       height:90px;
       box-sizing:border-box;
       }
.pat
       {
       width:100px;
       height:100px;
       border-radius:50%;
       overflow:hidden;
       position:absolute;
       top:-50px;
       left:220px;
       padding:-30px;
       }
       .footer {
  position:absolute;
  top:1000px;
  left: 0;
  bottom:0;
  width: 100%;
  background-color:black;
  color: #e1ddb7;
  text-align: center;
}
</style>
</head>
<body>
<div class="header">
		<p align="center">
			<img src="medical.png" width="50" height="50" align="left" /> <b>
				CARE AND CURE HOSPITAL</b> <img src="medical.png" width="50" height="50"
				align="right" />
		</p>
</div>
<div class="topnav">
		<a href="home.jsp"><i class="fa fa-home"> Home</i></a>
		<a class="active" href="sample.jsp"><i class="fa fa-user">Profile</i></a> 
		<a href="app.jsp"><i class="fa fa-calendar-check-o">Appointments today</i></a> 
		<a style="float:right;" href="logout.jsp"><i class="fa fa-power-off">logout</i></a>
</div>
<br>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<center>
<%
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
String uname="";
String dept="";
Cookie[] ck = request.getCookies();
int i;
if(ck!=null)
{
for(Cookie cookie:ck)
{
	if(cookie.getName().equals("username"))
	{
      uname=cookie.getValue();
	}
	if(cookie.getName().equals("department"))
	{
      dept=cookie.getValue();
	}  
}
}
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stpro","root","Samyu@041");  
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select * from doctor_regs");
	while(rs.next())
    {
  	  String user_name = rs.getString("uname");
  	  String department = rs.getString("spl"); 
      if((uname.equals(user_name)) && (dept.equals(department)))
      {
    	  
%>
<table>
<div class="samp">
<img  src="doc.png" class="pat"></img>
</div>
<tr>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>Name</td>
<td>:</td>
<td><%=rs.getString("uname") %></td>
</tr>
<tr>
<td>Date of birth</td>
<td>:</td>
<td><%=rs.getString("date_of_birth") %></td>
</tr>
<tr>
<td>Age</td>
<td>:</td>
<td><%=rs.getString("age") %></td>
</tr>
<tr>
<td>Gender</td>
<td>:</td>
<td><%=rs.getString("gender") %></td>
</tr>
<tr>
<td>Blood group</td>
<td>:</td>
<td><%=rs.getString("blood_grp") %></td>
</tr>
<tr>
<td>Phone number</td>
<td>:</td>
<td><%=rs.getString("phn_num") %></td>
</tr>
<tr>
<td>Email id</td>
<td>:</td>
<td><%=rs.getString("email_id") %></td>
</tr>
<tr>
<td>Experience</td>
<td>:</td>
<td><%=rs.getString("experience") %></td>
</tr>
<tr>
<td>Department</td>
<td>:</td>
<td><%=rs.getString("spl") %></td>
</tr>
<tr>
<td>Address</td>
<td>:</td>
<td><%=rs.getString("address") %></td></tr>
</table>
<%
      }
      }
      }
catch (Exception e) {
      e.printStackTrace();
      }
%>
</center>
<div class="footer">
    @care and cure hospital
    </div>
</body>
</html>