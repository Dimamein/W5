
<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>

	<div class="container">
		<table class="table table-striped">
			<!-- tytuł tablicy -->
			<c:if test="${not empty name}">
				<caption>Hi ${name} <br/></caption>
			</c:if>
			<caption>Your todos are</caption>
			<thead>
				<!-- nagłówki -->
				<tr>
					<th>Description</th>
					<th>Target Date</th>
					<th>Is Compleated</th>
					<th></th>
				</tr>
			</thead>
			<!-- body tablicy -->
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
						<td><a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<div>
		<a class="btn btn-success" href="/add-todo">Add</a>
		</div>
	</div>

<%@ include file="common/footer.jsp" %>