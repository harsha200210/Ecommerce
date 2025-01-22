<%--
  Created by IntelliJ IDEA.
  User: RedMark
  Date: 1/16/2025
  Time: 6:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #EEEEEE;
            padding: 20px;
        }
        .profile-container {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
        }
        .profile-title {
            color: #6a0dad;
            font-weight: bold;
        }
        .form-control {
            background-color: #e0e0e0;
        }
        .btn-primary {
            background-color: #6a0dad;
            border: none;
        }
        .back-btn {
            font-size: 24px;
            color: #6a0dad;
            cursor: pointer;
        }

        .back{
            top: 2%;
            left: 2%;
        }
    </style>
</head>
<body>
<div class="profile-container">
    <div class="back d-flex justify-content-start mb-3 position-absolute">
        <a href="#" class="back-btn">&larr;</a>
    </div>
    <h1 class="profile-title">My Profile</h1>
    <form>
        <div class="row g-3 mt-3">
            <div class="col-md-6">
                <label for="fullName" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="fullName" disabled>
            </div>
            <div class="col-md-6">
                <label for="emailAddress" class="form-label">Email Address</label>
                <input type="email" class="form-control" id="emailAddress" disabled>
            </div>
            <div class="col-md-6">
                <label for="mobileNumber" class="form-label">Mobile Number</label>
                <input type="text" class="form-control" id="mobileNumber" disabled>
            </div>
            <div class="col-md-6">
                <label for="userName" class="form-label">User Name</label>
                <input type="text" class="form-control" id="userName">
            </div>
            <div class="col-md-6">
                <label for="newPassword" class="form-label">New Password</label>
                <input type="password" class="form-control" id="newPassword">
            </div>
            <div class="col-md-6">
                <label for="confirmPassword" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="confirmPassword">
            </div>
        </div>
        <div class="mt-4">
            <button type="button" class="btn btn-primary">Edit Profile</button>
            <button type="button" class="btn btn-primary">Set Password</button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
