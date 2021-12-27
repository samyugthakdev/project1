<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Appointments</title>
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
width:50%;
}
th, td {
  padding: 15px;
  text-align: left;
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
		<a  href="sample.jsp"><i class="fa fa-user">Profile</i></a> 
		<a class="active" href="app.jsp"><i class="fa fa-calendar-check-o">Appointments</i></a>
		<a style="float:right;" href="logout.jsp"><i class="fa fa-power-off">logout</i></a> 
</div>
<center>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>

<%
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
String dept="";
Cookie[] ck = request.getCookies();
int i;
if(ck!=null)
{
for(Cookie cookie:ck)
{
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
	ResultSet rs=null;
	if(dept.equals("cardiology") || dept.equals("cardio"))
	{
	  rs=st.executeQuery("Select * from heart_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%	  
	    }
	}
	else if(dept.equals("orthology")|| dept.equals("ortho"))
	{
      rs=st.executeQuery("Select * from bone_app");
      while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%	
	}}
	else if(dept.equals("ent"))
	{
	  rs=st.executeQuery("Select * from ent_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%	
	}
	}
	else if(dept.equals("ophthalmology")|| dept.equals("eye"))
	{
	  rs=st.executeQuery("Select * from eye_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}}
	else if(dept.equals("dermatology")|| dept.equals("skin"))
	{
	 rs=st.executeQuery("Select * from skin_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
}}
	else if(dept.equals("neuro")|| dept.equals("brain"))
	{
	 rs=st.executeQuery("Select * from brain_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}}
	else if(dept.equals("dental"))
	{
	 rs=st.executeQuery("Select * from dental_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}}
	else if(dept.equals("kidney"))
	{
	 rs=st.executeQuery("Select * from kidney_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}}
	else if(dept.equals("lung"))
	{
	 rs=st.executeQuery("Select * from lung_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}
	}
	else if(dept.equals("gastroenterology")|| dept.equals("stomach"))
	{
	 rs=st.executeQuery("Select * from stomach_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}
	}
	else if(dept.equals("spinal"))
	{
	 rs=st.executeQuery("Select * from spinal_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}
	}
	else if(dept.equals("nerve"))
	{
	 rs=st.executeQuery("Select * from nerve_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}
	}
	else if(dept.equals("gynaecology"))
	{
	 rs=st.executeQuery("Select * from gyno_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
		  </table>
<%
	}
	}
	else
	{
	 rs=st.executeQuery("Select * from dia_app");
	  while(rs.next())
	    {
%>
		  <table>
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
		  <tr>
		  <tr>
		  <td>Email id</td>
		  <td>:</td>
		  <td><%=rs.getString("email_id") %></td>
		  </tr>
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
</body>
</html>