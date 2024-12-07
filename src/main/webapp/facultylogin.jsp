<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Faculty Login</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #111;
      color: #f4f4f4;
    }
    .divider {
      display: flex;
      align-items: center;
      text-align: center;
      margin: 1rem 0;
    }
    .divider::before,
    .divider::after {
      content: '';
      flex: 1;
      border-bottom: 1px solid #ddd;
      margin: 0 1rem;
    }
  </style>
</head>
<body>
  <section class="vh-100">
    <div class="container-fluid h-custom">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <!-- Left Side Image -->
        <div class="col-md-9 col-lg-6 col-xl-5">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
            class="img-fluid" alt="Sample image">
        </div>
        <!-- Login Form -->
        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
          <form method="post" action="checkfacultylogin">
            <div class="divider d-flex align-items-center my-4">
              <p class="text-center fw-bold mx-3 mb-0">Welcome To Faculty Login</p>
            </div>

            <!-- Email Input -->
            <div class="form-outline mb-4">
              <input type="email" id="femail" name="femail" class="form-control form-control-lg" placeholder="Enter a valid email address" required>
              <label class="form-label" for="femail">Email Address</label>
            </div>

            <!-- Password Input -->
            <div class="form-outline mb-3">
              <input type="password" id="fpwd" name="fpwd" class="form-control form-control-lg" placeholder="Enter password" required>
              <label class="form-label" for="fpwd">Password</label>
            </div>

            <!-- Remember Me and Forgot Password -->
            <div class="d-flex justify-content-between align-items-center">
              <div class="form-check mb-0">
                <input class="form-check-input me-2" type="checkbox" value="" id="rememberMe">
                <label class="form-check-label" for="rememberMe">
                  Remember me
                </label>
             

            <!-- Submit Buttons -->
            <div class="text-center text-lg-start mt-4 pt-2">
              <button type="submit" class="btn btn-primary btn-lg"
                style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
              <div class="back-to-main-navbar">
                    <a href="mainnavbar.jsp"><i class="fas fa-arrow-left"></i> Back to Main Navigation</a>
                </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
