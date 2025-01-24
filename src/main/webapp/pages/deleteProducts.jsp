<%--
  Created by IntelliJ IDEA.
  User: RedMark
  Date: 1/18/2025
  Time: 10:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Products</title>
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

        .form-control, .form-select {
            background-color: #eaeaea;
        }

        .table thead {
            background-color: #6a0dad;
            color: white;
        }

        .btn-primary {
            background-color: #6a0dad;
            border: none;
        }

        .btn-primary:hover {
            opacity: 0.9;
        }

        .back-btn {
            font-size: 24px;
            color: #6a0dad;
            cursor: pointer;
            position: absolute;
            top: 2%;
            left: 2%;
        }
    </style>
</head>
<body>
<a href="/E_Commerce_war_exploded/manageCustomers?message=" class="back-btn">&larr;</a>
<div class="container mt-4">

    <h2 class="manage-title text-center">Delete Products</h2>

    <!-- Form Inputs -->
    <div class="col-lg-8">
        <form class="d-flex">
            <input class="form-control me-2" type="number" placeholder="Search" id="search-input">
            <button class="btn btn-primary" id="search-button" type="button">Search</button>
        </form>
        <form action="/E_Commerce_war_exploded/deleteProducts" method="post">
            <input class="form-control me-2" type="search" placeholder="Search" name="search" id="disable-search-input">
            <div class="mb-3">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" id="productName" name="productName" class="form-control" readonly>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea id="description" name="description" class="form-control" readonly></textarea>
            </div>
            <div class="mb-3">
                <label for="quantity" class="form-label">Quantity</label>
                <input type="number" id="quantity" name="quantity" class="form-control" readonly>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input type="number" id="price" name="price" class="form-control" readonly>
            </div>
            <div class="mb-3">
                <label for="categories" class="form-label">Category</label>
                <input type="text" id="categories" name="categories" class="form-control" readonly>
            </div>
            <button type="submit" class="btn btn-danger">Delete Product</button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../js/jquery-3.7.1.min.js"></script>
<script>
    $('#disable-search-input').hide();
    $('#search-button').click(function() {
        const productId = $('#search-input').val();
        $.ajax({
            url: 'http://localhost:8080/E_Commerce_war_exploded/searchProducts?action=id&productsId=' + productId,
            type: 'GET',
            success: function(response) {
                $('#disable-search-input').val(response.productId);
                $('#productName').val(response.productName);
                $('#description').val(response.description);
                $('#quantity').val(response.quantity);
                $('#price').val(response.price);
                $('#categories').val(response.categories);
            }
        })
    });

</script>
</body>
</html>
