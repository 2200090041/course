<h2>Assignments</h2>
<c:forEach var="assignment" items="${assignments}">
    <div>
        <h3>${assignment.title}</h3>
        <p>${assignment.description}</p>
        <p>Due Date: ${assignment.dueDate}</p>
    </div>
</c:forEach>
