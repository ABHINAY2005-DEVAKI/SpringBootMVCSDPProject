<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Home</title>
</head>
<style>
    /* General styling for body */
    body {
        margin: 0;
        padding: 0;
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #e9dac1, #f4ecd8, #dac3b3); /* Soft pastel gradient */
        color: #4a403a; /* Dark brownish-gray text */
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background-size: 200% 200%;
        animation: backgroundAnimation 12s ease infinite;
    }

    /* Background gradient animation */
    @keyframes backgroundAnimation {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Centered heading styling */
    h2 {
        margin-bottom: 20px;
        color: #5a4d44; /* Warm, deep color for heading */
        font-size: 34px;
        text-align: center;
        text-shadow: 0 0 8px rgba(90, 77, 68, 0.2);
    }

    /* Navbar styling */
    .navbar {
        display: flex;
        justify-content: center;
        gap: 15px;
        margin-bottom: 20px;
    }

    .navbar a {
        text-decoration: none;
        padding: 12px 24px;
        color: #f4ecd8; /* Light, subtle text color for buttons */
        font-weight: bold;
        position: relative;
        border-radius: 10px;
        overflow: hidden;
        background-color: #a67f60; /* Earthy brown background for buttons */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        transition: all 0.4s ease-in-out;
        cursor: pointer;
    }

    /* Navbar button hover effect */
    .navbar a:hover {
        color: #dac3b3; /* Softer color on hover */
        background-color: #c49782; /* Slightly lighter earthy tone */
        box-shadow: 0 0 10px 3px rgba(196, 151, 130, 0.4);
        transform: translateY(-4px); /* Lift effect */
    }

    /* Button active click effect */
    .navbar a:active {
        box-shadow: 0 0 8px 2px rgba(165, 115, 94, 0.4);
        transform: translateY(2px); /* Subtle press-down effect */
    }

    /* Content display area */
    .content {
        display: none; /* Hidden by default */
        padding: 20px;
        margin-top: 20px;
        width: 80%;
        max-width: 600px;
        background-color: #e5d2c2; /* Soft background for content area */
        border-radius: 10px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        color: #4a403a;
        font-size: 16px;
        text-align: center;
    }

    /* JavaScript for toggling content */
    .navbar a.active + .content {
        display: block; /* Show content when button is active */
    }
</style>
<body>
<%@include file="empnavbar.jsp" %>

  <h3 style="text-align: center;"><u>My Profile</u></h3>

<div style="text-align: center;">
            <b>ID:</b><x%=emp.getId()%><br><br>
            <b>NAME:</b><%=emp.getName()%><br><br>
           <b>GENDER:</b><%=emp.getGender()%><br><br>
           <b>DATE OF BIRTH:</b><%=emp.getDateofbirth()%><br><br>
           <b>DEPARTMENT:</b><%=emp.getDepartment()%><br><br>
          <b> SALARY:</b><%=emp.getSalary()%><br><br>
           <b>LOCATION:</b><%=emp.getLocation()%><br><br>
           <b>EMAIL:</b><%=emp.getEmail()%><br><br>
           <b>CONTACT:</b><%=emp.getContact()%><br><br>
           <b>STATUS:</b><%=emp.getStatus()%><br><br>
</div>

</body>
</html>