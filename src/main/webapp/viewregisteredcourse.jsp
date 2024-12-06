<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.klef.jfsd.model.Student" %>
<%
    // Check if the student session exists, if not, redirect to login
    Student student = (Student) session.getAttribute("student");
    if(student == null) {
        response.sendRedirect("studentlogin");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Registered Courses</title>
    <style>
        /* Same CSS as before */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

        .navbar {
            width: 200px;
            background-color: #343a40;
            color: #fff;
            padding: 20px;
            position: fixed;
            left: 0;
            top: 0;
            bottom: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin: 10px 0;
        }

        .content {
            margin-left: 220px;
            padding: 20px;
        }

        .form-container {
            width: 100%;
            max-width: 800px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin-top: 40px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #343a40;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .back-link:hover {
            background-color: #0056b3;
        }

        .unregister-link {
            color: #dc3545;
            text-decoration: none;
            font-weight: bold;
        }

        .unregister-link:hover {
            color: #c82333;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@include file="studentnavbar.jsp" %>
    </div>

    <div class="content">
        <div class="form-container">
            <h2>Your Registered Courses</h2>

            <!-- Display registered courses -->
            <c:if test="${not empty registeredCourses}">
                <table>
                    <tr>
                        <th>Course ID</th>
                        <th>Course Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach var="course" items="${registeredCourses}">
                        <tr>
                            <td>${course.id}</td>
                            <td>${course.courseName}</td>
                            <td>${course.courseDescription}</td>
                            <td>${course.coursePrice}</td>
                            <td>
                                <!-- Unregister Link with student and course IDs -->
                                <a href="/unregister?courseId=${course.id}&studentId=${student.id}" class="unregister-link">
                                    Unregister
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>

            <c:if test="${empty registeredCourses}">
                <p>You have not registered for any courses yet.</p>
            </c:if>

            <a href="/viewcourse" class="back-link">Back to Available Courses</a>
        </div>
    </div>
</body>
</html>
