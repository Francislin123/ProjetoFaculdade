<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tela de login</title>
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,700">
</head>
<body>

	<div id="login">

		<form action="<%=request.getContextPath()%>/login" method="POST">

			<span class="fontawesome-user"></span> <input type="text" id="user"
				placeholder="Username" name="username"> <span
				class="fontawesome-lock"></span> <input type="password"
				id="password" placeholder="Password" name="password"> <input
				type="submit" value="Login">

		</form>
	</div>
</body>
</html>
