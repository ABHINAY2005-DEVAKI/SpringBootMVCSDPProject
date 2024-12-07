<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
 <title>Add Customer</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
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
</head>

<body>
  <%@include file="adminnavbar.jsp" %>
  
    <h3 style="text-align: center;"><u>Add Customer</u></h3>
    <div class="form-container">

<form:form modelAttribute="customer" method="post" action="insertcustomer">

<table>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>
<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>
<tr>
<td><label>Email ID</label></td>
<td><form:input path="email" required="required"/></td>
</tr>
<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>
<tr>
<td><label>Address</label></td>
<td>
<form:textarea path="address" required="required"/>
</td>
</tr>
<tr>
<td><label>Contact No</label></td>
<td><form:input path="contactno" required="required"/></td>
</tr>
<tr>
<td colspan="2" class="button-container">
<input type="submit" value="Add"/>
<input type="reset" value="Clear"/>
</td>
</tr>
</table>
</form:form>


</div>
</body>
</html>

 
