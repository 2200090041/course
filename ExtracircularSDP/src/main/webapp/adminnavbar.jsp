<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
  margin: 0;
  font-family: Arial, sans-serif;
  background-image: url('https://th.bing.com/th/id/OIP.zE34F1qHR-VyXFjTH5WjogHaDt?rs=1&pid=ImgDetMain'); /* Replace with your image URL */
  background-size: cover; /* Ensures the image covers the entire page */
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed; /* Fixes the background during scrolling */
  color: #ffffff; /* White text for contrast */
}

.topbar {
  width: 100%;
  background-color: rgba(0, 0, 0, 0.4); /* Lighter semi-transparent black */
  position: fixed;
  top: 0;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px 20px; /* Adjust padding for space */
  z-index: 1000;
}


.topbar img {
  height: auto;
  width: auto;
  max-height: 60px; /* Adjust logo size */
}

.topbar a {
  color: #ffffff;
  padding: 12px 16px; /* Reduced padding for a compact frame */
  text-decoration: none;
  font-size: 18px;
  transition: color 0.2s ease, background-color 0.2s ease;
}

.topbar a:hover {
  background-color: #ff4d4d;
  color: #ffffff;
}

.content {
  padding-top: 100px; /* Offset content to avoid overlap with navbar */
  padding: 20px;
  text-align: center;
}

/* Responsive Design */
@media screen and (max-width: 700px) {
  .topbar {
    flex-direction: column;
  }
  .topbar a {
    display: block;
    padding: 10px;
    font-size: 16px;
  }
}

@media screen and (max-width: 400px) {
  .topbar a {
    padding: 8px;
    font-size: 14px;
  }
}
</style>
</head>
<body>

<div class="topbar">
  <img src="https://th.bing.com/th/id/OIP.nAlvtU22i4t62etMs7pAqgHaHa?w=192&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="Logo" />
  <a href="adminhome">Home</a>
  <a href="studentreg">Add Student</a>
  <a href="addfaculty">Add Faculty</a>
  <a href="courseadd">Add Course</a>
  <a href="viewallstudents">View All Students</a>
  <a href="deletestudent">Delete Students</a>
  <a href="adminlogout">Logout</a>
</div>


</body>
</html>
