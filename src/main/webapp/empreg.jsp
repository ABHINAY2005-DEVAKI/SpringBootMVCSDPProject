<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
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
  <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Employee Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertemp"> <!-- forced mapping/ method in the contoller -->
            <table>
               <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="egender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL">Technical</option>
                            <option value="MARKETING">Marketing</option>
                            <option value="SALES">Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.01" required/></td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                 <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
