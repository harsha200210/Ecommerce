<%@ page import="lk.ijse.ecommerce.dto.OrdersDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: RedMark
  Date: 1/19/2025
  Time: 8:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Order</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f5f5f5;
        }

        .manage-title {
            color: #6a0dad;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .table th {
            background-color: #6a0dad;
            color: #fff;
        }

        .table td {
            background-color: #f8f9fa;
        }

        .back-btn {
            font-size: 24px;
            color: #6a0dad;
            cursor: pointer;
            position: absolute;
            top: 2%;
            left: 2%;
        }

        .manage-btn {
            background-color: #6f42c1;
            color: white;
        }
        .manage-btn:hover {
            background-color: #5a379c;
        }
        .details-box {
            background-color: #e9ecef;
            padding: 15px;
            border-radius: 5px;
        }
        .image-container img {
            max-width: 100%;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<a href="/E_Commerce_war_exploded/manageCustomers" class="back-btn">&larr;</a>
<div class="container mt-5">
    <div class="row mb-4">
        <div class="col-12 text-center">
            <h1 class="manage-title">View Orders</h1>
        </div>
    </div>
    <div class="row mb-3">
        <div class="col-12 text-end">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Order ID" aria-label="Order ID" id="search-input">
                <button class="btn btn-outline-primary" type="button" id="search-button">
                    search
                </button>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Table Section -->
        <div class="col-lg-8">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Date</th>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                </thead>
                <%
                    List<OrdersDTO> allOrders = (List<OrdersDTO>) request.getAttribute("orders");
                    if (allOrders != null && !allOrders.isEmpty()) {
                %>
                <tbody>
                <% for (int i = 0;i < allOrders.size();i++) {
                    for (int j = 0; j < allOrders.get(i).getOrderDetails().size(); j++) {
                %>
                <tr>
                    <td><%=allOrders.get(i).getOrderId()%></td>
                    <td><%=allOrders.get(i).getDate()%></td>
                    <td><%=allOrders.get(i).getOrderDetails().get(j).getProduct().getProductId()%></td>
                    <td><%=allOrders.get(i).getOrderDetails().get(j).getQuantity()%></td>
                    <td><%=allOrders.get(i).getOrderDetails().get(j).getProduct().getPrice() * allOrders.get(i).getOrderDetails().get(j).getQuantity()%></td>
                    <td><button class="btn btn-sm manage-btn" onclick="tblButtonClick(i,j)">Manage Button</button></td>
                </tr>
                <%}
                }%>
                </tbody>
                <%
                    }
                %>
            </table>
        </div>

        <!-- Details Section -->
        <div class="col-lg-4" id="visible-div">
            <div class="details-box mb-3">
                <p><strong>Order ID:</strong> 001</p>
                <p><strong>Customer ID:</strong> C123</p>
                <p><strong>Date:</strong> 2025-01-18</p>
                <p><strong>Product ID:</strong> P456</p>
                <p><strong>Description:</strong> High-quality smartphone</p>
                <p><strong>Category:</strong> Electronics</p>
                <p><strong>Order Quantity:</strong> 1</p>
                <p><strong>Total Price:</strong> $200</p>
            </div>
            <div class="image-container text-center">
                <img src="uploads/878a42360f1629751d16875fa6917c7b.jpg" alt="Product Image">
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
    $('#search-button').on('click', function() {
        const search = $('#search-input').val();
        const rows = $('#tblBody tr');

        let found = false;

        rows.each(function () {
            const row = $(this);
            const orderId = row.find('td:first').text();

            if (orderId === search) {
                row.show();
                found = true;
            } else {
                row.hide();
            }
        });

        if (!found) {
            alert('No matching record found!');
        }

    });

    $("#visible-div").hide();

    function tblButtonClick(orderIndex , orderDetailsIndex) {

    }
</script>
</body>
</html>
