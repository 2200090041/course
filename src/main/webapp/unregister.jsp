<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registered Courses</title>
</head>
<body>
    <h2>Your Registered Courses</h2>

    <c:if test="${not empty registeredCourses}">
        <table border="1">
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
                        <form action="unregisterCourse" method="post">
                            <input type="hidden" name="courseId" value="${course.id}" />
                            <input type="hidden" name="studentId" value="${student.id}" />
                            <input type="submit" value="Unregister" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    
    <c:if test="${empty registeredCourses}">
        <p>You are not registered for any courses.</p>
    </c:if>

    <a href="studenthome">Back to Student Home</a>
</body>
</html>
