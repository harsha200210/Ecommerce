<%@ page import="lk.ijse.ecommerce.dto.ProductsDTO" %>
<%@ page import="lk.ijse.ecommerce.dao.custom.ProductsDAO" %>
<%@ page import="lk.ijse.ecommerce.dao.DAOFactory" %>
<%@ page import="lk.ijse.ecommerce.entity.Products" %><%--
  Created by IntelliJ IDEA.
  User: RedMark
  Date: 1/16/2025
  Time: 5:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #EEEEEE;
        }
        .product-container {
            padding: 30px;
        }
        .product-image {
            max-width: 100%;
            border-radius: 10px;
        }
        .price {
            font-size: 1.5rem;
            font-weight: bold;
            color: #6a0dad;
        }
        .star-rating {
            color: gold;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-secondary {
            background-color: #6a0dad;
            border: none;
        }
        .quantity-control button {
            border: 1px solid #000;
        }
        textarea {
            border: 2px solid #6a0dad;
            border-radius: 10px;
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
<div class="back d-flex justify-content-start mb-3 position-absolute">
    <a href="/E_Commerce_war_exploded/index" class="back-btn">&larr;</a>
</div>

<%! public String changeImagePath(String path) {

    int uploadsIndex = path.indexOf("uploads");

    if (uploadsIndex != -1) {
        return path.substring(uploadsIndex);
    } else {
        return null;
    }
}
%>

<%
    String productId = request.getParameter("product");

    ProductsDAO productsDAO = (ProductsDAO) DAOFactory.getDAO(DAOFactory.Type.PRODUCTS);

    try {
        Products products = productsDAO.getProducts(Integer.parseInt(productId));
        products.setImage(changeImagePath(products.getImage()));
%>

<div class="container product-container">
    <div class="row">
        <!-- Product Image Section -->
        <div class="col-md-6 text-center">
            <img src="/E_Commerce_war_exploded/<%=products.getImage()%>" alt="Product Image" class="product-image">
        </div>

        <!-- Product Details Section -->
        <div class="col-md-6">
            <h2><%=products.getProductName()%></h2>
            <p class="price">Rs. <%=products.getPrice()%></p>
            <textarea class="form-control" placeholder="Description" readonly><%=products.getDescription()%></textarea>
            <p class="star-rating">★★★★★</p>

            <!-- Quantity Section -->
            <div class="d-flex align-items-center mb-3">
                <p class="me-2">Quantity:</p>
                <div class="quantity-control d-flex align-items-center">
                    <button class="btn btn-light">+</button>
                    <input type="text" value="1" class="form-control w-25 text-center mx-1" readonly>
                    <button class="btn btn-light">-</button>
                </div>
            </div>

            <!-- Buttons Section -->
            <div class="d-flex gap-2">
                <button class="btn btn-primary">Buy Now</button>
                <button class="btn btn-secondary">Add Cart</button>
            </div>
        </div>
    </div>
</div>

<%
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
