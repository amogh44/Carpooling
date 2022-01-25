<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script type ="text/javascript">
            function validate() {
                  
              var contactnumber = document.registerform.contactnumber.value;

                if (contactnumber.length != 10) {
                    alert("Please enter Mobile number correctly");
                    return false;
                }
                return true;
            }
    </script>
    </head>
    <body class="h-100">
        <div class ="container h-100">
            <div class="row h-100 justify-content-center align-items-center">
                <div class ="col-10 col-md-8 col-lg-6">
                    <div class="px-2">
                    <!-- Creating a new user registration form -->
                        <form name = "registerform" action="processAddUser.jsp" method="post" class="justify-content-center">
                            <h1>New User Registration</h1>
                            
                            
                            
                            <div class="form-group">
                                <label for="fname">First Name:</label>
                                <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname" required>
                            </div>
                            <div class="form-group">
                                <label for="lname">Last Name:</label>
                                <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname" required>
                            </div>
                            <div class="form-group">
                                <label for="dob">DOB:</label>
                                <input type="date" class="form-control" id="dob" placeholder="dd/mm/yyyy" name="dob" required>
                            </div>
                              <div>
                                <label for="gender">Select Gender:</label>
                                <select class="form-control" id="gender" name="gender">
                                    <option>M</option>
                                    <option>F</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="contactnumber">Contact Number:</label>
                                <input type="text" class="form-control" id="contactnumber" placeholder="XXXXXXXXXX" name="contactnumber" required>
                            </div>
                             <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" placeholder="example@email.com" name="email" required>
                            </div>
                             <div class="form-group">
                                <label for="userid">UserId:</label>
                                <input type="text" class="form-control" id="userid" placeholder="Enter UserId" name="userid" required>
                            </div>
                           
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required>
                            </div>
                               <div>
                                <label for="usercategory">Select UserCategory:</label>
                                <select class="form-control" id="usercategory" name="usercategory">
                                    <option>Rider</option>
                                    <option>Owner</option>
                                </select>
                            </div>
                            
                          
                            <h1>  </h1>
                            <button type="submit" onClick="return validate();" class="btn btn-success btn-lg">Submit</button>

                        </form>
                        <!-- Form end -->
                    </div>
                </div>
            </div>

    
    </div>

</body>
</html>
