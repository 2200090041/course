<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        /* Styling */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a0dad, #9b4d96);
            margin: 0;
            padding: 0;
            color: #333;
            display: flex;
            min-height: 100vh;
        }

        .navbar {
            width: 220px;
            background-color: #1d3557;
            color: #f1faee;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
        }

        .content {
            margin-left: 240px;
            width: calc(100% - 240px);
            padding: 20px;
        }

        .dashboard {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }

        .card {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            padding: 25px;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card h2 {
            font-size: 20px;
            margin-bottom: 20px;
            color: #1d3557;
        }

        canvas {
            width: 100% !important;
            height: 200px !important;
        }

        .rating {
            font-size: 24px;
            color: #e76f51;
        }

        .course-list p {
            margin: 10px 0;
            font-weight: bold;
        }

        /* Responsive Styling */
        @media screen and (max-width: 768px) {
            .content {
                margin-left: 0;
                width: 100%;
                padding: 10px;
            }

            .navbar {
                position: static;
                width: 100%;
                height: auto;
                box-shadow: none;
            }

            .dashboard {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>


 

<!-- Main Content -->
<div class="content">
    <h1>Welcome, Admin!</h1>
    <div class="dashboard">
        <!-- Faculty Addition -->
        <div class="card">
            <h2>ADD Faculty</h2>
            <canvas id="facultyChart"></canvas>
        </div>
      

        <!-- Faculty Progress Chart -->
        <div class="card">
            <h2>Student Progress</h2>
            <canvas id="facultyProgressChart"></canvas>
        </div>

        <!-- Student Rating -->
        <div class="card">
            <h2>Student Rating</h2>
            <p class="rating">4.5 / 5.0</p>
        </div>

        <!-- Enrolled Courses -->
        <div class="card">
            <h2>Enrolled Courses</h2>
            <div class="course-list">
                <!-- Dynamic Content -->
                <p><strong>Java Full Stack</strong> - March 2023 to May 2023</p>
                <p><strong>Mern Stack</strong> - March 2023 to June 2023</p>
                <p><strong>Python Full Stacck</strong> - February 2023 to April 2023</p>
            </div>
        </div>

        <!-- Assignments Pending -->
        
    </div>
</div>

<script>
    // Faculty Chart
    const facultyChart = new Chart(document.getElementById('facultyChart'), {
        type: 'doughnut',
        data: {
            labels: ['Added', 'Remaining'],
            datasets: [{
                data: [75, 25],
                backgroundColor: ['#2a9d8f', '#e76f51']
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'bottom',
                }
            }
        }
    });

    // Faculty Progress Chart
    const facultyProgressChart = new Chart(document.getElementById('facultyProgressChart'), {
        type: 'bar',
        data: {
            labels: ['Completed', 'In Progress'],
            datasets: [{
                data: [80, 20],
                backgroundColor: ['#457b9d', '#e63946']
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>

</body>
</html>
