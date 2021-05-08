
<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>

<div class="container">
	<h1>Add Todo</h1>
	
	<form method="post" id="form">
		<div class="form-group">
			<label for="desc" class="control-label">Description</label>
			<input class="form-control" id="desc" placeholder="Description" name="desc" type="text"/>
		</div>
		
		<div class="form-group">
			<label for="date" class="control-label">Target Date</label>
			<input class="form-control" placeholder="Target Date" id="date" name="targetDate" type="date"/>
			<input type="hidden" name="targetDate" id="newdate"/>
		</div>
		
		<div class="form-group">
			<label for="done" class="control-label">Todo status</label>
			<select class="form-control" name="isDone" id="done">
				<option selected disabled value="">Select Status</option>
				<option value="true">True</option>
				<option value="false">False</option>
			</select>
		</div>
		
		
		<input type="submit" class="btn btn-default" value="Add"/>
	</form>
</div>

<%@ include file="common/footer.jsp" %>
