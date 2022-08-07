<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <style>
  table.GeneratedTable {
    width: 100%;
    background-color: #ffffff;
    border-collapse: collapse;
    border-width: 2px;
    border-color: #ffcc00;
    border-style: solid;
    color: #000000;
  }

  table.GeneratedTable td, table.GeneratedTable th {
    border-width: 2px;
    border-color: #ffcc00;
    border-style: solid;
    padding: 3px;
  }

  table.GeneratedTable thead {
    background-color: #ffcc00;
  }
  </style>
  <meta charset="UTF-8">
  <title>Insert title here</title>
</head>
<body>
  <table class="GeneratedTable">
    <thead>
      <tr>
        <th>Key</th>
        <th>Value</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>age</td>
        <td><%out.println(request.getAttribute("age")); %></td>
      </tr>
      <tr>
        <td>Country</td>
        <td><%out.println(request.getAttribute("cntry")); %></td>
      </tr>
      <tr>
        <td>Gender</td>
        <td><%out.println(request.getAttribute("gndr")); %></td>
      </tr>
    </tbody>
  </table>
</body>
</html>