<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>

	<div class="container">
		Welcome ${name}, your password: ${password} <br/>
		Now, you can <a href="/list-todos">manage your todos.</a>
	</div>

<%@ include file="common/footer.jsp" %>