<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>Login</title>
<link href="<c:url value="/styles.css"/>" rel="Stylesheet"
	type="text/css" />
</head>

<body>
	<jsp:include page="/header.jsp" />

	<div id="addBook">

		<c:url value="/performLogin" var="loginUrl" />

		<!-- Because this is a simple html form we need the security csrfInput to 
		generate the hidden field with the security csrf code -->
		<form action="${loginUrl}" method="post">

			<c:if test="${param.error != null}">
				<p>Invalid username and/or password</p>
			</c:if>

			<label>Username:</label> <input type="text" name="vppUsername"
				value="${param.username}" /> <label>Password:</label> <input
				type="password" name="vppPassword" />

			<sec:csrfInput />

			<input type="submit" value="Login" />
		</form>
	</div>

	<jsp:include page="/footer.jsp" />
</body>
</html>
