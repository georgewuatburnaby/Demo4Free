<!DOCTYPE html>
<html>
<head>
<title>Grails Runtime Exception</title>
<meta name="layout" content="main">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'errors.css')}" type="text/css">
</head>
<body>
	<g:form action="auth">
		<label for="username">Username: </label>
		<input type="text" id="username" name="username"/>
		<br />
		<label for="password">Password: </label>
		<input type="password" id="password" name="password"/>
		<input type="submit"/>
	</g:form>
</body>
</html>
