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

/* Left-side navbar with purple and pink theme */
.topbar {
  height: 100%;
  width: 250px; /* Set fixed width for the left sidebar */
  background-color: black; /* Purple background */
  position: fixed;
  top: 0;
  left: 0;
  display: flex;
  flex-direction: column; /* Stack links vertically */
  align-items: flex-start;
  padding-top: 20px; /* Adds spacing from the top */
  z-index: 1000;
}

.topbar img {
  height: auto;
  width: 40%; /* Make logo smaller */
  max-width: 80px; /* Restrict max logo width */
  margin-bottom: 20px; /* Space between logo and first link */
  padding-left: 20px; /* Add some padding to the left */
}

.topbar a {
  color: #ffffff;
  padding: 12px 20px;
  text-decoration: none;
  font-size: 18px;
  width: 100%; /* Make links take up the full width */
  transition: color 0.2s ease, background-color 0.2s ease;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2); /* Add separator between links */
}

.topbar a:hover {
  background-color: black; /* Pink hover effect */
  color: #ffffff;
}

/* Content styling */
.content {
  margin-left: 250px; /* Offset content to avoid overlap with navbar */
  padding: 20px;
  text-align: center;
}

/* Responsive Design */
@media screen and (max-width: 700px) {
  .topbar {
    width: 100%;
    height: auto;
    flex-direction: row; /* Switch to horizontal layout on smaller screens */
    align-items: center;
    padding-top: 10px;
  }

  .topbar img {
    margin: 0 10px;
    width: 50px;
    height: 50px;
  }

  .topbar a {
    padding: 10px;
    font-size: 16px;
    border-bottom: none;
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
  <a href="viewallstudents">View All Students</a>

  <a href="deletefaculty">Delete Faculty</a>
  <a href="deletestudent">Delete Students</a>
  <a href="admindash">Dashboard</a>
  <a href="adminlogout">Logout</a>
</div>

<div class="content">
  <!-- Your page content goes here -->
</div>

</body>
</html>
