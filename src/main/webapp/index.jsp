<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Retail Store | Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header, footer {
            background-color: #333;
            color: #fff;
            padding: 15px 30px;
            text-align: center;
        }
        nav {
            background-color: #444;
            padding: 10px 30px;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin-right: 15px;
        }
        .welcome {
            margin: 20px;
            font-size: 18px;
        }
        .product-list {
            display: flex;
            flex-wrap: wrap;
            padding: 20px;
            justify-content: space-around;
        }
        .product {
            border: 1px solid #ccc;
            width: 220px;
            margin: 10px;
            padding: 10px;
            text-align: center;
        }
        .product img {
            max-width: 100%;
        }
        footer {
            font-size: 14px;
        }
    </style>
</head>
<body>

<%
    String username = (String) session.getAttribute("username");
%>

<header>
    <h1>Retail Store</h1>
    <p>Your one-stop shop for everything!</p>
</header>

<nav>
    <a href="index.jsp">Home</a>
    <a href="products.jsp">Products</a>
    <a href="cart.jsp">Cart</a>
    <a href="login.jsp">Login</a>
</nav>

<div class="welcome">
    <% if (username != null) { %>
        Welcome, <strong><%= username %></strong>!
    <% } else { %>
        Welcome, Guest! <a href="login.jsp">Login</a> to personalize your experience.
    <% } %>
</div>

<div class="product-list">
    <div class="product">
        <img src="images/product1.jpg" alt="Product 1">
        <h3>Wireless Headphones for IPhone</h3>
        <p>$59.99</p>
        <button>Add to Cart</button>
    </div>
    <div class="product">
        <img src="images/product2.jpg" alt="Product 2">
        <h3>Smart Watch</h3>
        <p>$89.99</p>
        <button>Add to Cart</button>
    </div>
    <div class="product">
        <img src="images/product3.jpg" alt="Product 3">
        <h3>Bluetooth Speaker</h3>
        <p>$29.99</p>
        <button>Add to Cart</button>
    </div>
    <!-- Add more products here -->
</div>

<footer>
    &copy; <%= new java.util.Date().getYear() + 1900 %> Retail Store. All rights reserved.
</footer>

</body>
</html>
