<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<style>
	#greyout{
	opacity: 0.5;
	}

.button {
  background-color: #9C27B0;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>
<body>
	<div class="container" id = "greyout">
		<div class="row"> 
			<h2 >Registration</h2>
			
			<form action="" method="post" id="form-add-user"
			class="form-horizontal" onsubmit="return validation();">

				<!-- Mobile Number -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="phoneNumber" name="phoneNumber" class="form-control"
							required="required" placeholder="Mobile Number" maxlength="14" size="14" disabled>
					</div>
				</div>
			
				<!-- First Name -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="firstName" name="firstName"
							class="form-control" required="required"
							placeholder="First Name" disabled>
					</div>
				</div>
			
				<!-- Last Name -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="lastName" name="lastName"
							class="form-control" required="required"
							placeholder="Last Name" disabled>
					</div>
				</div>
				
				<!-- DOB -->
				<div class="form-group">
					<div class="col-md-8">
						<label class="col-md-8">Date of Birth</label><br>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-8">
					<div class="col-md-3">
						<select class="form-control" id="month" name="month">
							  <option value="">Month</option>
						</select>
					</div>
					<div class="col-md-3">
						<select class="form-control" id="day" name="day">
							  <option value="">Day</option>
						</select>
					</div>
					<div class="col-md-3">
						<select class="form-control" id="year" name="year">
							  <option value="">Year</option>
						</select>
					</div>
					</div>		
				</div>
				
				<!-- Gender  -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="radio" id="gender" name="male" value="male" disabled>
						<label for="male" id = "greyout">Male</label>
						<input type="radio" id="gender" name="female" value="female" disabled>
						<label for="female" id = "greyout">Female</label>
					</div>
				</div>
				
				<!-- Email -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="email" name="email" class="form-control"
							required="required" placeholder="Email" maxlength="4" size="4" disabled>
					</div>
				</div>
			
				<!-- Submit Button -->
				<div class="form-group">
					<div class="col-md-8">
						<button type="submit" class="btn button" value = "save" disabled>Register</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<div class="container">
		<!-- Login -->
		<div class="form-group">
			<form action = "/MitraisTest/login" method = "get">
				<div class="col-md-8">
					<button type="submit" class="btn button">Login</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>
</html>

<script type="text/javascript">
	
	function validation(){
		var val = $('#phoneNumber').value;
		if (val.substring(0, 3) != "+62"){
			alert("Mobile number should be Indonesian Phone Number (+62) !");
			return false;
		}
			return true;
	}
	
</script>