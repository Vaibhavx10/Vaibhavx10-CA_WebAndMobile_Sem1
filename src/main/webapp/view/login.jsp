<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Login Page</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link type="text/css" href="../css/dashboardstyle.css" rel="stylesheet" />

</head>

<body>
	<form:form action="userValidation" method="post">
		<div class="container card card-body">
			Enter User Name:<input type="text" name="uname"> <br /> 
			Enter Password :<input type="password" name="upass" /> <br /> 
			<input 	type="submit">
		</div>
	</form:form>
</body>

</html>