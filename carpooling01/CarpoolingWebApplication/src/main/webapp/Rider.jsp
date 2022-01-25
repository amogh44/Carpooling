<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post A ride</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body class="h-100">
	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
			<div class="col-10 col-md-8 col-lg-6">
				<div class="px-2">
					<!-- Creating a new post ride details form-->
					<form name="rider" action="processpostride.jsp" method="post"
						class="justify-content-center">
						<h1>Welcome Owner</h1>
						<h2>Post A ride</h2>

						<div class="form-group">
							<label for="contactnumber">Contact Number:</label> <input
								type="text" class="form-control" id="contactnumber"
								placeholder="XXXXXXXXXX" name="contactnumber" required>
						</div>
						<div class="form-group">
							<label for="pickup">Pick Up Address:</label> <input type="text"
								class="form-control" id="pickup"
								placeholder="Enter Pick Up Address" name="pickup" required>
						</div>
						<div class="form-group">
							<label for="dropaddress">Drop Address:</label> <input type="text"
								class="form-control" id="dropaddress"
								placeholder="Enter Drop Address" name="dropaddress" required>
						</div>

						<div class="form-group">
							<label for="city">City:</label> <input type="text"
								class="form-control" id="city" placeholder="Enter City"
								name="city" required>
						</div>
						<div class="form-group">
							<label for="zipcode">Zip Code:</label> <input type="text"
								class="form-control" id="zipcode" placeholder="Enter Zip Code"
								name="zipcode" required>
						</div>


						<h1></h1>
						<button type="submit" class="btn btn-success btn-lg">Post
							A ride</button>

					</form>
					<!-- Form end -->
				</div>
			</div>
		</div>


	</div>

</body>
</html>
