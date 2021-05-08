	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		
		var url = location.pathname;
		console.log(url);
		if (url == '/list-todos') {
			$('.main-li').removeClass('active');
			$('.todos-li').addClass('active');
		} else if (url == '/add-todo') {
			$('.todos-li').removeClass('active');
			$('.main-li').removeClass('active');
		} else {
			$('.todos-li').removeClass('active');
			$('.main-li').addClass('active');
		}
		
		//For Initialize the bootstrap validator plugin. 
		$(document).on('submit','#form',function(e){
		
			if ($('#desc').val() && $('#date').val() && $('#done').val()) {

			} else {
				e.preventDefault();
			}

			if (!$('#desc').val()) {
				$('#desc').parent().addClass('has-error');
			} else {
				$('#desc').parent().removeClass('has-error');
			}
			if (!$('#date').val()) {
				$('#date').parent().addClass('has-error');
			} else {
				var newDate = new Date();
				var new_date = $('#date').val()+'T'+newDate.toLocaleTimeString()+'.000Z';
				$('#newdate').val(new_date);
				$('#date').parent().removeClass('has-error');
			}
			if (!$('#done').val()) {
				$('#done').parent().addClass('has-error');
			} else {
				$('#done').parent().removeClass('has-error');
			}
			
			
		});
	});
	</script>
</body>
</html>