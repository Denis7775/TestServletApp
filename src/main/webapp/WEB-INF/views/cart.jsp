<%--
  Created by IntelliJ IDEA.
  User: Денис
  Date: 06.07.2018
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cart</title>
</head>
<body>
<h1>Your cart</h1>
<table>
    <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
    </tr>

    <c:forEach var="item" items="${cart.items}">
        <tr>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type="text" name="quantity"
                           value="<c:out value='${item.quantity}'/>" id="quantity">
                    <input type="submit" value="Update">
                </form>
            </td>
            <td><c:out value="${item.product.description}"/></td>
            <td>${item.product.price}</td>
            <td>${item.total}</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type="hidden" name="quantity" value="0">
                    <input type="submit" value="Remove item">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<p><b>To change the quantity</b>, enter the new quantity
    and click on the Update button.</p>

<form action="../../index.jsp" method="post">
    <input type="hidden" name="action" value="shop">
    <input type="submit" value="Continue Shopping">
</form>

</body>
</html>

















































<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Cart</title>
</head>
<body>
<h1>Your cart</h1>
<table>
    <tr>
        <th>Quantity</th>
        <th>Description</th>
        <th>Price</th>
        <th>Amount</th>
        <th></th>
    </tr>

    <c:forEach var="item" items="${cart.items}">
        <tr>
            <td>
                <form action="" method="post">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type="text" name="quantity"
                           value="<c:out value='${item.quantity}'/>" id="quantity">
                    <input type="submit" value="Update">
                </form>
            </td>
            <td><c:out value="${item.product.description}"/></td>
            <td>${item.product.getPriceCurrentFormat}</td>
            <td>${item.getTotalCurrencyFormat}</td>
            <td>
                <form action="" method="post">
                    <input type="hidden" name="productCode"
                           value="<c:out value='${item.product.code}'/>">
                    <input type="hidden" name="quantity" value="0">
                    <input type="submit" value="Remove item">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<p><b>To change the quantity</b>, enter the new quantity
and click on the Update button.</p>

<form action="../../index.jsp" method="post">
    <input type="hidden" name="action" value="shop">
    <input type="submit" value="Continue Shopping">
</form>

</body>
</html>
--%>
