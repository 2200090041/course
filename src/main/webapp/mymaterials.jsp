<!DOCTYPE html>
<html>
<head>
    <title>View Materials</title>
</head>
<body>
    <h2>Available Materials</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Name</th>
                <th>Size (KB)</th>
                <th>Download</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="material" items="${materials}">
    <tr>
        <td>${material.name}</td>
        <td>
            <!-- Create a link to download the material -->
            <a href="/student/download/${material.id}">Download</a>
        </td>
    </tr>
</c:forEach>
            
        </tbody>
    </table>
</body>
</html>
