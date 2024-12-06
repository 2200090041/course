<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
  margin: 0;
  font-family: Arial, sans-serif;
  background-color: #f4f4f9;
  position: relative;
  overflow: hidden;
}


/* Background Slideshow */
.background-slideshow {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1; /* Keep it behind the content */
  overflow: hidden;
}

.background-slideshow img {
  position: absolute;
  width: 100%;
  height: 100%;
  object-fit: cover;
  opacity: 0;
  animation: fade 12s infinite;
}

.background-slideshow img:nth-child(1) {
  animation-delay: 0s;
}
.background-slideshow img:nth-child(2) {
  animation-delay: 4s;
}
.background-slideshow img:nth-child(3) {
  animation-delay: 8s;
}

@keyframes fade {
  0%, 100% { opacity: 0; }
  25%, 75% { opacity: 1; }
}

/* Topbar */

.topbar {
  width: 100%;
  background-color: rgba(0, 0, 0, 0.4); /* Lighter semi-transparent black */
  position: fixed;
  top: 0;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px ; /* Adjust padding for space */
  z-index: 1000;
}

.topbar img {
  height: auto; /* Keep original height */
  width: auto; /* Keep original width */
  max-height: 100px; /* Maximum height for the image */
}

.topbar a {
  display: inline-block;
  color: #ffffff; /* White text color for contrast */
  padding: 16px 20px;
  text-decoration: none;
  font-size: 18px;
  transition: color 0.2s ease, background-color 0.2s ease;
}

.topbar a:hover:not(.active) {
  background-color: #ff4d4d; /* Lighter red for hover effect */
  color: #ffffff;
}

.content {
  padding-top: 80px; /* Add padding to avoid overlapping with topbar */
  padding: 20px;
}

/* Responsive Design */
@media screen and (max-width: 700px) {
  .topbar a {
    display: block;
    padding: 14px;
    font-size: 16px;
  }
}

@media screen and (max-width: 400px) {
  .topbar a {
    padding: 12px;
    font-size: 14px;
  }
}
</style>
</head>
<body>

<!-- Background Slideshow -->
<div class="background-slideshow">
  <img src="https://th.bing.com/th/id/OIP.zE34F1qHR-VyXFjTH5WjogHaDt?rs=1&pid=ImgDetMain" alt="Background 1">
  <img src="https://example.com/image2.jpg" alt="Background 2">
  <img src="https://example.com/image3.jpg" alt="Background 3">
</div>

<div class="topbar">
  <img src="https://th.bing.com/th/id/OIP.nAlvtU22i4t62etMs7pAqgHaHa?w=192&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="Logo" />
  <div>
    <a href="home">Home</a>
    <a href="adminlogin">Admin Login</a>
    <a href="studentlogin">Student Login</a>
    <a href="facultylogin">Faculty Login</a>
    <a href="about">About</a>
  </div>
</div>


</body>
</html>
