<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="todaysDate" value="<%= new java.util.Date() %>"/>

<h1>JR <span>Hartley</span> <small>booksellers since 1923</small></h1>

<div id="links">
	<ul>
		<li><a href='viewAllBooks.do'>All Books</a></li>
		<li><a href='<c:url value="viewCart.do"/>'>Your Shopping Cart</a></li>
		<li><a href='findByAuthor.jsp'>Find By Author</a></li>
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<li><a href='addNewBook.do'>Add a New Book</a></li>		
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<li><a href='<c:url value="logout"/>'>Logout</a></li>		
		</sec:authorize>
		<sec:authorize access="isAnonymous()">
			<li><a href='<c:url value="createAccount.do"/>'>Create Account</a></li>		
		</sec:authorize>
	</ul>
</div>