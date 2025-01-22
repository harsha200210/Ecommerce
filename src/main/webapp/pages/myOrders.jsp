<%--
  Created by IntelliJ IDEA.
  User: RedMark
  Date: 1/16/2025
  Time: 7:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Orders</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f5f5f5;
        }

        .orders-title {
            color: #6a0dad;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .orders-table th {
            background-color: #6a0dad;
            color: white;
            text-align: center;
        }

        .orders-table td {
            text-align: center;
            vertical-align: middle;
        }

        .order-details {
            background-color: #eaeaea;
            padding: 20px;
            border-radius: 10px;
        }

        .order-details img {
            max-width: 100%;
            border-radius: 10px;
        }

        .back-btn {
            font-size: 24px;
            color: #6a0dad;
            cursor: pointer;
        }

        .manage-btn {
            background-color: #6a0dad;
            border: none;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
        }

        .manage-btn:hover {
            background-color: #5a0cad;
        }
    </style>
</head>
<body>

<!-- Back Button -->
<div class="container mt-4">
    <a href="#" class="back-btn">&larr;</a>
</div>

<!-- Orders Section -->
<div class="container mt-3">
    <h2 class="orders-title text-center">My Orders</h2>

    <!-- Orders Table -->
    <table class="table orders-table table-bordered">
        <thead>
        <tr>
            <th>Order ID</th>
            <th>Date</th>
            <th>Product</th>
            <th>Price</th>
            <th>Manage</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>12345</td>
            <td>2024-01-16</td>
            <td>Redmi 12</td>
            <td>$300</td>
            <td><button class="manage-btn">Manage Button</button></td>
        </tr>
        <tr>
            <td>12346</td>
            <td>2024-01-17</td>
            <td>iPhone 15</td>
            <td>$1000</td>
            <td><button class="manage-btn">Manage Button</button></td>
        </tr>
        <tr>
            <td>12347</td>
            <td>2024-01-18</td>
            <td>Samsung S23</td>
            <td>$850</td>
            <td><button class="manage-btn">Manage Button</button></td>
        </tr>
        </tbody>
    </table>
</div>

<!-- Order Details Section -->
<div class="container mt-5">
    <div class="row">
        <!-- Order Details -->
        <div class="col-md-6">
            <div class="order-details">
                <p><strong>Order ID:</strong> 12345</p>
                <p><strong>Date:</strong> 2024-01-16</p>
                <p><strong>Product ID:</strong> P12345</p>
                <p><strong>Description:</strong> Redmi 12 Smartphone</p>
                <p><strong>Category:</strong> Electronics</p>
                <p><strong>Order Quantity:</strong> 1</p>
                <p><strong>Total Price:</strong> $300</p>
            </div>
        </div>
        <!-- Product Image -->
        <div class="col-md-6 text-center">
            <img src="../878a42360f1629751d16875fa6917c7b.jpg" alt="Product Image" class="img-fluid" width="400"/>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

