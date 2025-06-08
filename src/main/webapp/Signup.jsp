<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Form</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery and jQuery Validation -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>

<style>
.container {
	max-width: 500px;
	margin: 50px auto;
	background: lightblue;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px gray;
}
.error {
	color: red;
	font-size: 14px;
}
</style>
</head>

<body>
	<div class="container">
		<h1 class="text-center">SignUp Form</h1>
		<form id="registrationForm" action="signup" method="post">
			<div class="mb-3">
				<label class="form-label">Name</label>
				<input type="text" class="form-control" name="name">
			</div>
			<div class="mb-3">
				<label class="form-label">Phone</label>
				<input type="text" class="form-control" name="phone">
			</div>
			<div class="mb-3">
				<label class="form-label">Email</label>
				<input type="email" class="form-control" name="email">
			</div>
			<div class="mb-3">
				<label class="form-label">Password</label>
				<input type="password" class="form-control" id="pw" name="pw">
			</div>
			<div class="mb-3">
				<label class="form-label">Confirm Password</label>
				<input type="password" class="form-control" name="confirmpw">
			</div>
			<div class="text-center">
				<input type="submit" class="btn btn-primary" value="Create Account">
			</div>
		</form>
	</div>

	<!-- jQuery Validation -->
	<script>
		$(document).ready(function () {
			$("#registrationForm").validate({
				rules: {
					name: {
						required: true,
						minlength: 3
					},
					phone: {
						required: true,
						digits: true,
						minlength: 10,
						maxlength: 10
					},
					email: {
						required: true,
						email: true
					},
					pw: {
						required: true,
						minlength: 6
					},
					confirmpw: {
						required: true,
						equalTo: "#pw"
					}
				},
				messages: {
					name: {
						required: "Please enter your name",
						minlength: "Name must be at least 3 characters long"
					},
					phone: {
						required: "Please enter your phone number",
						digits: "Only numbers are allowed",
						minlength: "Phone number must be 10 digits",
						maxlength: "Phone number must be 10 digits"
					},
					email: {
						required: "Please enter your email",
						email: "Enter a valid email address"
					},
					pw: {
						required: "Please provide a password",
						minlength: "Password must be at least 6 characters long"
					},
					confirmpw: {
						required: "Please confirm your password",
						equalTo: "Passwords do not match"
					}
				},
				submitHandler: function (form) {
					alert("Form submitted successfully!");
					form.submit();
				}
			});
		});
	</script>

	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
