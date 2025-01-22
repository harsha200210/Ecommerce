<%--
  Created by IntelliJ IDEA.
  User: RedMark
  Date: 1/14/2025
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap E-Commerce UI</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #EEEEEE;
        }
        .navbar {
            background-color: #6a0dad;
        }
        .navbar a {
            color: white !important;
        }
        .product-card {
            border: 2px solid #6a0dad;
            border-radius: 10px;
            padding: 15px;
        }
        .product-card img {
            width: 100%;
            border-radius: 10px;
        }
        .price {
            font-weight: bold;
            font-size: 1.2rem;
        }
        .star-rating {
            color: gold;
        }
        .cart-btn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #6a0dad;
            border: none;
            border-radius: 50%;
            padding: 15px;
            color: white;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">E-Shop</a>
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search">
            <button class="btn btn-light" type="submit">Search</button>
        </form>
        <div>
            <a href="#">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Sign Up</a>
        </div>
    </div>
</nav>

<!-- Product Grid -->
<div class="container mt-5">
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col">
            <div class="product-card">
                <img src="../878a42360f1629751d16875fa6917c7b.jpg" alt="Product Image">
                <p>Model Name</p>
                <p class="price">Rs. 35,000</p>
                <p class="star-rating">★★★★★</p>
            </div>
        </div>
        <div class="col">
            <div class="product-card">
                <img src="../878a42360f1629751d16875fa6917c7b.jpg" alt="Product Image">
                <p>Model Name</p>
                <p class="price">Rs. 35,000</p>
                <p class="star-rating">★★★★★</p>
            </div>
        </div>
        <div class="col">
            <div class="product-card">
                <img src="../878a42360f1629751d16875fa6917c7b.jpg" alt="Product Image">
                <p>Model Name</p>
                <p class="price">Rs. 35,000</p>
                <p class="star-rating">★★★★★</p>
            </div>
        </div>
    </div>
</div>

<!-- Floating Cart Button -->
<button class="cart-btn">🛒</button>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


