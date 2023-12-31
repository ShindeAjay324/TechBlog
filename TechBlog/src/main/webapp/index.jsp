<%@page import="com.techblog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
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
<style >
.banner-background{
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 90%, 65% 97%, 31% 94%, 0 95%, 0 0);
}
</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<!-- Include -->
	<!-- NavBar -->
	<%@include file="navbar.jsp"%>

	<!-- //Banner -->
	<div class="container-fluid p-0 m-0 banner-background">
		<div class="jumbotron primary-background">
			<div class="container">
				<h3 class="display-3">Welcome To TechBlog</h3>
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry's standard
					dummy text ever since the 1500s, when an unknown printer took a
					galley of type and scrambled it to make a type specimen book. It
					has survived not only five centuries, but also the leap into
					.</p>
				<button class="btn btb-outline-light ">
					<span class="fa fa-deviantart "></span> Register Here
				</button>
				<button class="btn btb-outline-light ">
					<span class="fa fa-address-card-o "></span> Login
				</button>
			</div>
		</div>
	</div>
	<br>

	<!-- Cards -->
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read More</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read More</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read More</a>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-4">
				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read More</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read More</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
		
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

</body>
</html>