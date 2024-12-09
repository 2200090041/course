<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Courses</title>
    <style>
        /* Reset margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic page styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #000; /* Black background */
            color: #fff; /* White text for contrast */
            display: flex;
            min-height: 100vh;
        }

        /* Navbar styling */
        .navbar {
            width: 220px;
            background-color: #1d3557; /* Fully black navbar */
            color: #f1faee; /* White text for contrast */
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
			box-shadow: 2px 0 5px rgba(0, 0, 0,0.1);
        }

        .navbar a {
            color: #a8dadc; /* White links */
            text-decoration: none;
            margin: 12px 0;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #f1faee; /* Bright yellow on hover */
        }

        /* Content styling */
        .content {
            flex: 1;
            padding: 40px;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #f1c40f; /* Bright yellow for headings */
        }

        table {
            margin: 40px auto;
            border-collapse: collapse;
            width: 80%;
            background-color: #222; /* Dark background for table */
            color: #fff; /* White text for table */
        }

        table th, table td {
            padding: 10px 15px;
            border: 1px solid #555; /* Subtle border for table cells */
            text-align: center;
        }

        table th {
            background-color: #555; /* Slightly lighter background for headers */
        }

        table tr:hover {
            background-color: #444; /* Highlight row on hover */
        }

        a {
            display: block;
            text-align: center;
            margin: 20px auto;
            width: 200px;
            padding: 10px 0;
            background-color: #222; /* Neutral dark button */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #f1c40f; /* Yellow on hover */
        }

        form input[type="submit"] {
            background-color: #27ae60;
            color: #fff;
            border: none;
            padding: 8px 12px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        form input[type="submit"]:hover {
            background-color: #218c54;
        }

        p {
            text-align: center;
            font-size: 18px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>

<!-- Main Content -->
<div class="content">
    <h2>Available Courses</h2>

    <c:if test="${not empty courseList}">
        <table>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            <c:forEach var="course" items="${courseList}">
                <tr>
                    <td>${course.id}</td>
                    <td>${course.courseName}</td>
                    <td>${course.courseDescription}</td>
                    <td>${course.coursePrice}</td>
                    <td>
                        <form action="registerCourse" method="post">
                            <input type="hidden" name="courseId" value="${course.id}" />
                            <input type="hidden" name="studentId" value="${student.id}" />
                            <input type="submit" value="Register" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <c:if test="${empty courseList}">
        <p>No courses available for registration.</p>
    </c:if>

    <a href="studenthome">Back to Student Home</a>
</div>

</body>
</html>