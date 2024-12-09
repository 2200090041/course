<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Management</title>
<style>
  body {
    margin: 0;
    font-family: Arial, sans-serif;
  }

  /* Full-page background image */
  .background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('https://example.com/your-image.jpg'); /* Replace with your image URL */
    background-size: cover;
    background-position: center;
    z-index: -1; /* Ensure the background stays behind content */
  }

  /* Title styling */
  .title {
    color: white;
    text-align: center;
    font-size: 50px;
    font-weight: bold;
    margin-top: 200px;
  }

  /* Navigation bar (if needed) */
  .navbar {
    padding: 15px;
    background-color: #000000; /* Black background */
    color: #ffffff;
    text-align: center;
  }

  .navbar a {
    color: #ffffff;
    padding: 10px 15px;
    text-decoration: none;
    font-size: 18px;
  }

  .navbar a:hover {
    background-color: #ff4d4d;
  }
</style>
</head>
<body>

<!-- Background Image -->
<div class="background"></div>

<!-- Including the Navigation Bar -->
<%@include file="mainnavbar.jsp" %>

<!-- Page Title -->
<div class="title">
  Course Management
</div>



</body>
</html>
