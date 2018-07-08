<%--
  Created by IntelliJ IDEA.
  User: Денис
  Date: 06.07.2018
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
</head>
<body>

<h1> CD list</h1>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
    <tr>
        <td>86 (the band) - True Life Songs and Pictures</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
            <input type="hidden" name="productCode" value="8601">
            <input type="hidden" name="quantity" value="1">
            <input type="submit" value="Add To Cart">
        </form></td>
    </tr>
    <tr>
        <td>Paddlefoot - The first CD</td>
        <td class="right">$12.95</td>
        <td><form action="cart" method="post">
            <input type="hidden" name="productCode" value="pf01">
            <input type="hidden" name="quantity" value="1">
            <input type="submit" value="Add To Cart">
        </form> </td>
    </tr>
    <tr>
        <td>Joe Rut - Genuine Wood Grained Finish</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
            <input type="hidden" name="productCode" value="jr01">
            <input type="hidden" name="quantity" value="1">
            <input type="submit" value="Add To Cart">
        </form> </td>
    </tr>
</table>
<td><form action="cart" method="post">
    <input type="hidden" name="action" value="checkout">
    <input type="submit" value="Checkout">
</form> </td>
</body>
</html>































<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
</head>
<body>

<h1> CD list</h1>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
    <tr>
        <td>86 (the band) - True Life Songs and Pictures</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
            <input type="hidden" name="productCode" value="8601">
            <input type="hidden" name="quantity" value="1">
            <input type="submit" value="Add To Cart">
        </form></td>
    </tr>
    <tr>
        <td>Paddlefoot - The first CD</td>
        <td class="right">$12.95</td>
        <td><form action="cart" method="post">
            <input type="hidden" name="productCode" value="pf01">
            <input type="hidden" name="quantity" value="1">
            <input type="submit" value="Add To Cart">
        </form> </td>
    </tr>
    <tr>
        <td>Joe Rut - Genuine Wood Grained Finish</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
            <input type="hidden" name="productCode" value="jr01">
            <input type="hidden" name="quantity" value="1">
            <input type="submit" value="Add To Cart">
        </form> </td>
    </tr>
</table>
</body>
</html>
--%>
