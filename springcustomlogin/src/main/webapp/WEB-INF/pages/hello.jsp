<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page session="false"%>
<html>
<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
</script>
<body>
	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<a href="javascript:formSubmit()">Logout</a>
	
	<a href="login?logout">Custom Logout</a>
</body>
</html>