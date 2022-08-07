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
  Hello, 
  <%
    out.println((String) request.getAttribute("username"));
  %><br>
  <form action = "scrn2">
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
          <td><input type="text" id="age" name="age"></td>
        </tr>
        <tr>
          <td>Country</td>
          <td><input type="text" id="cntry" name="cntry"></td>
        </tr>
        <tr>
          <td>Gender</td>
          <td><input type="text" id="gndr" name="gndr"></td>
        </tr>
      </tbody>
    </table>
  <input type="submit">
  </form>
</body>
</html>