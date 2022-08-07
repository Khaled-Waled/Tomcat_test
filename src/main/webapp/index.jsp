<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<style type="text/css">
		div
		{
			height: 200px;
			width: 50%;
			background: rgb(255,31,31);
			background: linear-gradient(90deg, rgba(255,31,31,1) 0%, rgba(189,163,65,1) 42%, rgba(0,219,255,1) 100%);
			border-radius: 50px;
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 50px;
			font-size: 32px;
			font-family: "Lucida Console", "Courier New", monospace;
			color: white;
		}
	</style>
</head>
<body>
	<div>
		<form action = "scrn1">
			Username:   
			<input type="text" id="usr" name="usr"><br>
			Password:
			<input type="text" id="pas" name="pas"><br>
			<input type="submit">
		</form>
	</div>
	
	<%
		try
		{
			if((boolean) request.getAttribute("fail"))
			{
				out.println("<h1 style=\"color:red;\">Try again<h1>");
			}
		}
		catch(Exception e) {}	
	%>
</body>
</html>