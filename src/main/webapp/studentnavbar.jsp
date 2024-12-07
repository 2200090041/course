<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot MVC SDP Project</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        .sidebar {
            width: 220px;
            background-color: #000000;
            position: fixed; 
            height: 100%;
            overflow: auto;
            text-align: center;
        }

        .sidebar img {
            width: 80%;
            margin: 20px 0;
        }

        .sidebar a {
            display: block;
            color: #ffffff;
            padding: 16px;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.2s ease, background-color 0.2s ease;
        }

        .sidebar a:hover {
            background-color: #ff4d4d;
            color: #ffffff;
        }

        .content {
            margin-left: 240px;
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        /* Responsive Design */
        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
            .sidebar a {
                float: left;
                width: 100%;
            }
            .content {
                margin-left: 0;
            }
        }

        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }
        }

        .dropdown {
            position: relative;
            display: block; /* Ensures it aligns with other sidebar items */
            text-align: left; /* Align dropdown menu to the left */
        }

        .dropdown .dropdown-link {
            color: #ffffff;
            padding: 16px;
            font-size: 18px;
            text-decoration: none;
            display: block;
            cursor: pointer;
            background-color: #000000;
        }

        .dropdown-menu {
            display: none;
            background-color: #333333;
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .dropdown-menu a {
            padding: 10px 20px;
            color: #ffffff;
            text-decoration: none;
            display: block;
            font-size: 16px;
            transition: background-color 0.2s ease;
        }

        .dropdown-menu a:hover {
            background-color: #ff4d4d;
        }

        /* Show dropdown on hover (optional) */
        .dropdown:hover .dropdown-menu {
            display: block;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <img src="https://th.bing.com/th/id/OIP.MAC8ZgrpduZsXVsQHucUvwHaGm?rs=1&pid=ImgDetMain" alt="Logo">
        <a href="studenthome">Home</a>
        <a href="studentprofile">My Profile</a>
        <a href="viewcourse">RegisterCourse</a>
        <a href="viewregisteredcourse">My Course</a>
       
        <a href="dashboard">Dashboard</a>
        <a href="studentlogout">Logout</a>

        <div class="dropdown">
            <a class="dropdown-link">Internship</a>
            <ul class="dropdown-menu">
                <li><a href="/fullstack">Full Stack Development Course</a></li>
                <li><a href="/internships/data-science">Data Science Course</a></li>
                <li><a href="/internships/human-resource-management">Human Resource Management Course</a></li>
                <li><a href="/internships/digital-marketing">Digital Marketing Course</a></li>
                <li><a href="/internships/ui-ux-design">UI/UX Design Course</a></li>
                <li><a href="/internships/product-management">Product Management Course</a></li>
                <li><a href="/internships/supply-chain-logistics">Supply Chain Logistics Course</a></li>
            </ul>
        </div>
    </div>

    <div class="content">
        <!-- Add any additional content here -->
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const dropdownLink = document.querySelector('.dropdown-link');
            const dropdownMenu = document.querySelector('.dropdown-menu');

            dropdownLink.addEventListener('click', (e) => {
                e.preventDefault();
                dropdownMenu.style.display = dropdownMenu.style.display === 'block' ? 'none' : 'block';
            });

            // Optional: Close dropdown when clicking outside
            document.addEventListener('click', (e) => {
                if (!dropdownLink.contains(e.target) && !dropdownMenu.contains(e.target)) {
                    dropdownMenu.style.display = 'none';
                }
            });
        });
    </script>
</body>
</html>
