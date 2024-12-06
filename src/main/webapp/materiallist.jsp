<!DOCTYPE html>
<html>
<head>
    <title>All Materials</title>
</head>
<body>
    <h2>All Uploaded Materials</h2>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Path</th>
                <th>Size</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="material" items="${materials}">
                <tr>
                    <td>${material.name}</td>
                    <td>${material.path}</td>
                    <td>${material.size}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
