<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Form</title>
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            padding-top: 80px; /* Add space for the fixed header */
        }

        /* Header styles */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #555;
            color: black;
            padding: 10px 20px;
            position: fixed; /* Fix the header at the top */
            width: 100%;
            top: 0;
            z-index: 1000; /* Ensure the header is above other elements */
        }

        .logo img {
            height: 50px;
            margin-right: 10px;
        }

        .nav-links {
            display: flex;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .nav-links li {
            margin: 0 15px;
        }

        .nav-links li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }

        .nav-links li a:hover {
            text-decoration: underline;
            color: black;
        }

        /* Contact Form Styles */
        .form-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
            margin: 50px auto 0; /* Add margin to separate from the top */
            transform: scale(1); 
            transition: transform 0.3s ease-in-out;
        }

        .form-container:hover {
            transform: scale(1.05); 
        }

        .contact-form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            text-align: left;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        input, textarea {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
        }

        button {
            padding: 10px 15px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #ffffff;
            cursor: pointer;
            transition: transform 0.3s ease-in-out, background-color 0.3s ease;
        }

        button:hover {
            transform: scale(1.1);
            background-color: #0056b3;
        }

    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <div class="logo">
            <a href="#"> <img src="https://www.perfectbuilderschennai.com/assets/images/logo/PB--Logo.png" alt="Perfect Builders Logo"></a>
        </div>
        <ul class="nav-links">
            <li><a href="Index.jsp">Home</a></li>
            <li><a href="Index.jsp">About Us</a></li>
            <li><a href="OurProjects.jsp">Our Projects</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="login.jsp">Login/Registration</a></li>
        </ul>
    </div>

    <!-- Contact Form Section -->
    <div class="form-container">
        <h2>Contact Us</h2>
        <form action="Contact" method="post" class="contact-form">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="submit-button">Send Message</button>
        </form>
        <div id="successMessage" style="display: <%=(request.getAttribute("message") != null ? "block" : "none")%>; color: green; margin-top: 20px;">
            <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
        </div>
    </div>

</body>
</html>
