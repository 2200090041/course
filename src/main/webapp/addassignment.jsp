<form action="insertassignment" method="post">
    <label for="title">Title:</label>
    <input type="text" id="title" name="title" required><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description" required></textarea><br>

    <label for="duedate">Due Date:</label>
    <input type="date" id="duedate" name="duedate" required><br>

    <label for="courseId">Course ID:</label>
    <input type="text" id="courseId" name="courseId" required><br>

    <button type="submit">Add Assignment</button>
</form>
