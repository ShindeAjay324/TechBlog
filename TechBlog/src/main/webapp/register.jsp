<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 90%, 65% 97%, 31% 94%, 0 95%, 0 0);
}
</style>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<main class="primary-background p-5">
		<div class="container ">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<span class="fa fa-3x fa-user-circle"></span> Register Here
					</div>
					<div class="card-body">
						<form id="reg-form" action="RegisterServlet" method="post">
						
							<div class="form-group">
								<label for="exampleInputName">User Name</label> <input name="name"
									type="text" class="form-control" id="exampleInputName"
									aria-describedby="nameHelp"> 
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input name="email"
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input name="password"
									type="password" class="form-control" id="exampleInputPassword1">
							</div>
							
							<div class="form-group">
								<label for="gender" >Select Gender</label> 
								<br><input 
									type="radio"  id="gender" name="gender" value="Male">Male
									<br><input name="gender"
									type="radio"  id="gender" name="gender" value="Female">Female
							</div>
							<div class="form-group form-check">
								<input type="checkbox" name="check" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree Terms and conditions</label>
							</div>
							<div class="text-center">
							<div class="container text-center" id="loader" style="display:none;">
								<span class="fa fa-refresh fa-spin"></span>
								<h4>Please Wait .....</h4>
							</div>
							
							<button id="submit-btn" type="submit" class="btn btn-primary ">Submit</button>
							</div>
						</form>
					</div>
					<div class="card-footer"></div>
				</div>
			</div>
		</div>
	</main>


	<!-- javascript -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script >
$(document).ready(function(){
	console.log("loaded......")
	$('#reg-form').on('submit',function(event){
		event.preventDefault();
		
		let form=new FormData(this);
		$("#submit-btn").hide();
		$("#loader").show();
		
		//send register servlet
		$.ajax({
			url:"RegisterServlet",
			type:'POST',
			data:form,
			success:function(data,textStatus, jqXHR){
				console.log(data)
				$("#submit-btn").show();
				$("#loader").hide();
				swal("You are Successfully Register..We are Redirecting to login Page ")
				.then((value) => {
				  window.location="login.jsp"
				  
				});
			},
			error: function(jqXHR, textStatus, errorThrown){
				console.log(data)
				$("#submit-btn").show();
				$("#loader").hide();
				swal("Something Went Wrong, Please Try again")
				.then((value) => {
				  window.location="index.jsp"
				  
				});
			},
			processData:false,
			contentType:false
		});
	});
});
</script>
</body>
</html>