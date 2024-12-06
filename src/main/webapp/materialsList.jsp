<!-- materialsList.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table>
    <tr>
        <th>Material</th>
        <th>Download</th>
    </tr>
    <c:forEach var="material" items="${materials}">
        <tr>
            <td>${material.name}</td>
            <td><a href="${pageContext.request.contextPath}/student/download?file=${material.filePath}">Download</a></td>
        </tr>
    </c:forEach>
</table>
