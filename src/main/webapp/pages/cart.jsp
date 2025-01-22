<%--
  Created by IntelliJ IDEA.
  User: RedMark
  Date: 1/16/2025
  Time: 5:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Shopping Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #EEEEEE;
        }
        .cart-card {
            border: 2px solid #6a0dad;
            border-radius: 10px;
            padding: 15px;
            margin-bottom: 20px;
        }
        .cart-card img {
            width: 100px;
            border-radius: 10px;
        }
        .order-summary {
            background: #EEEEEE;
            border: 2px solid #6a0dad;
            border-radius: 10px;
            padding: 15px;
            color: black;
        }
        .checkout-btn {
            background-color: #6a0dad;
            color: white;
            font-weight: bold;
            border: none;
        }
        .icon-btn {
            border: none;
            background: none;
            font-size: 1.2rem;
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

        @media (max-width:767px) {
            .cart-card>input:nth-child(1){
                top: 0;
                bottom: 0;
                left: 5%;
                margin: auto;
            }
        }
    </style>
</head>
<body>
<div class="back d-flex justify-content-start mb-3 position-absolute">
    <a href="/E_Commerce_war_exploded/index" class="back-btn">&larr;</a>
</div>

<div class="container mt-5">
    <h2 class="mb-4" style="color: #6a0dad">Cart</h2>

    <!-- Main Section with Order Summary and Cart Items -->
    <div class="row">
        <!-- Cart Items Section -->
        <div class="col-lg-8 col-md-12">
            <!-- Product Card -->
            <div class="cart-card d-flex flex-column flex-md-row align-items-center position-relative">
                <input type="checkbox" class="me-3 position-absolute">
                <img src="../878a42360f1629751d16875fa6917c7b.jpg" alt="Product">
                <div class="ms-3 flex-grow-1 text-center text-md-start">
                    <p><strong>Model Name</strong></p>
                    <p>Rs. 35,000</p>
                    <div class="d-flex justify-content-center justify-content-md-start align-items-center">
                        <label class="me-2">Quantity:</label>
                        <button class="btn btn-sm btn-secondary">-</button>
                        <input type="text" value="1" class="form-control form-control-sm mx-2" style="width: 50px; text-align: center;">
                        <button class="btn btn-sm btn-secondary">+</button>
                    </div>
                </div>
                <div class="mt-3 mt-md-0 text-center">
                    <button class="icon-btn">❤️</button>
                    <button class="icon-btn">🗑️</button>
                </div>
            </div>

            <!-- Another Product Card (Duplicated for demo purposes) -->
            <div class="cart-card d-flex flex-column flex-md-row align-items-center position-relative">
                <input type="checkbox" class="me-3 position-absolute">
                <img src="../878a42360f1629751d16875fa6917c7b.jpg" alt="Product">
                <div class="ms-3 flex-grow-1 text-center text-md-start">
                    <p><strong>Model Name</strong></p>
                    <p>Rs. 35,000</p>
                    <div class="d-flex justify-content-center justify-content-md-start align-items-center">
                        <label class="me-2">Quantity:</label>
                        <button class="btn btn-sm btn-secondary">-</button>
                        <input type="text" value="1" class="form-control form-control-sm mx-2" style="width: 50px; text-align: center;">
                        <button class="btn btn-sm btn-secondary">+</button>
                    </div>
                </div>
                <div class="mt-3 mt-md-0 text-center">
                    <button class="icon-btn">❤️</button>
                    <button class="icon-btn">🗑️</button>
                </div>
            </div>
        </div>

        <!-- Order Summary Section -->
        <div class="col-lg-4 col-md-12 mt-4 mt-lg-0">
            <div class="order-summary">
                <h5>Order Summary</h5>
                <p>Subtotal: <span class="float-end">Rs. 0.0</span></p>
                <p>Discount: <span class="float-end">Rs. 0.0</span></p>
                <p><strong>Total: <span class="float-end">Rs. 0.0</span></strong></p>
                <button class="btn checkout-btn w-100 mt-3">Checkout</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
