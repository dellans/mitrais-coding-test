<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Registration</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
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

.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: #9C27B0;
  color: white;
  font-size: 16px;
  text-align: center;
}
</style>

</head>
<body>	
	<div class="container">
		<div class="row">
			<h2>Registration</h2>

			<form action="/MitraisTest/registration/save" method="post"
				id="form-add-user" class="form-horizontal"
				onsubmit="return validation();">

				<!-- Mobile Number -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="phoneNumber" name="phoneNumber"
							class="form-control" required="required"
							placeholder="Mobile Number" maxlength="14" size="14">
						<div class="invalid-tooltip">Please enter valid Indonesian phone number (+62)</div>
					</div>
				</div>

				<!-- First Name -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="firstName" name="firstName"
							class="form-control" required="required" placeholder="First Name">
					</div>
				</div>

				<!-- Last Name -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="lastName" name="lastName"
							class="form-control" required="required" placeholder="Last Name">
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
								<option value="01">January</option>
								<option value="02">February</option>
								<option value="03">March</option>
								<option value="04">April</option>
								<option value="05">May</option>
								<option value="06">June</option>
								<option value="07">July</option>
								<option value="08">August</option>
								<option value="09">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
							</select>
						</div>
						<div class="col-md-3">
							<select class="form-control" id="day" name="day">
								<option value="">Day</option>
								<option value="01">01</option>
								<option value="02">02</option>
								<option value="03">03</option>
								<option value="04">04</option>
								<option value="05">05</option>
								<option value="06">06</option>
								<option value="07">07</option>
								<option value="08">08</option>
								<option value="09">09</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>
						</div>
						<div class="col-md-3">
							<select class="form-control" id="year" name="year">
								<option value="">Year</option>
								<option value="1985">1985</option>
								<option value="1986">1986</option>
								<option value="1987">1987</option>
								<option value="1988">1988</option>
								<option value="1989">1989</option>
								<option value="1990">1990</option>
								<option value="1991">1991</option>
								<option value="1992">1992</option>
								<option value="1993">1993</option>
								<option value="1994">1994</option>
								<option value="1995">1995</option>
								<option value="1996">1996</option>
								<option value="1997">1997</option>
								<option value="1998">1998</option>
								<option value="1999">1999</option>
								<option value="2000">2000</option>
							</select>
						</div>
					</div>
				</div>

				<!-- Gender  -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="radio" id="gender" name="gender" value="male">
						<label for="male">Male</label> <input type="radio" id="gender"
							name="gender" value="female"> <label for="female">Female</label>
					</div>
				</div>

				<!-- Email -->
				<div class="form-group">
					<div class="col-md-8">
						<input type="text" id="email" name="email" class="form-control"
							required="required" placeholder="Email">
					</div>
				</div>

				<!-- Submit Button -->
				<div class="form-group">
					<div class="col-md-8">
						<button type="submit" class="btn button" value="save">Register</button>
					</div>
				</div>
			</form>

			<!-- Footer -->
			<div class="footer">
				<p>footer</p>
			</div>
		</div>
	</div>
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>
</html>


<script type="text/javascript">
	function validation() {
		var val = document.getElementById('phoneNumber').value;
		if (val.substr(0, 3) != "+62") {
			alert("Please enter valid Indonesian phone number (+62)!");
			return false;
		}
		return true;
	}
</script>