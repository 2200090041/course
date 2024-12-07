<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <!-- MDBootstrap & FontAwesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .bg-primary {
            background-color: #0d6efd !important;
        }

        .btn-primary {
            background-color: #0d6efd;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0b5ed7;
        }

        .welcome-title {
            text-align: center;
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #0d6efd;
        }

        .back-to-main-navbar {
            text-align: center;
            margin-top: 20px;
        }

        .back-to-main-navbar a {
            color: #0d6efd;
            text-decoration: none;
            font-weight: bold;
        }

        .back-to-main-navbar a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <!-- Image Section -->
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                     class="img-fluid" alt="Sample image">
            </div>

            <!-- Form Section -->
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <form method="post" action="checkstudentlogin">
                    <!-- Welcome Title -->
                    <div class="welcome-title">Welcome to Student Login</div>

                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <input type="email" id="semail" name="semail" class="form-control form-control-lg"
                               placeholder="Enter a valid email address" required />
                        <label class="form-label" for="semail">Email address</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-3">
                        <input type="password" id="spwd" name="spwd" class="form-control form-control-lg"
                               placeholder="Enter password" required />
                        <label class="form-label" for="spwd">Password</label>
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                        <!-- Checkbox -->
                        <div class="form-check mb-0">
                            <input class="form-check-input me-2" type="checkbox" value="" id="rememberMe" />
                            <label class="form-check-label" for="rememberMe">Remember me</label>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
                    </div>
                </form>

                <!-- Link to Main Navbar -->
                <div class="back-to-main-navbar">
                    <a href="mainnavbar.jsp"><i class="fas fa-arrow-left"></i> Back to Main Navigation</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- MDB JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"></script>
</body>
</html>
