<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    img{
        height: 50px;
        width: 35px;
    }
</style>
<body>
<%!
   List<Customer> customersList = new ArrayList<>();
%>
<%
  customersList.add(new Customer("Mai Van Hoan",LocalDate.of(1995,8,20),"Ha Noi","https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"));
  customersList.add(new Customer("Nguyen Thi Anh Duong",LocalDate.of(1998,6,15),"Hai Duong","https://drive.google.com/file/d/1Yygcay8Jb9-eyyz2WLVxfj1JrDPR1K5z/view?usp=share_link"));
  customersList.add(new Customer("Nguyen Thi Van Anh",LocalDate.of(2001,3,27),"Thanh Hoa","https://drive.google.com/file/d/1mudyYfpYzw5v8_L5fUIBNM6R67DRx-bn/view?usp=share_link"));
  request.setAttribute("customers", customersList);
%>
<h1 id="title">
    Danh sach khach hang
</h1>
<table>
    <tr>
        <td>Ten</td>
        <td>Ngay Sinh</td>
        <td>Dia chi</td>
        <td>Anh</td>
    </tr>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.imgUrl}"></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>