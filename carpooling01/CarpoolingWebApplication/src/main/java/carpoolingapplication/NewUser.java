package carpoolingapplication;



public class NewUser {
	//Variables defined
	String firstName;
	String lastName;
	String dob;
	String gender;
	String contactNumber;
	String email;
	String userid;
	String password;
	String userCategory;
	//Constructor with fields
	
	public NewUser(String firstName, String lastName, String dob, String gender, String contactNumber, String email,
			String userid, String password, String userCategory) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.gender = gender;
		this.contactNumber = contactNumber;
		this.email = email;
		this.userid = userid;
		this.password = password;
		this.userCategory = userCategory;
	}
	//Default constructor
	public NewUser(String userid, String password) {
		super();
		this.userid = userid;
		this.password = password;
	}
	//Default constructor
	public NewUser() {
	}
	
	
	//Getters and Setters
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserCategory() {
		return userCategory;
	}

	public void setUserCategory(String userCategory) {
		this.userCategory = userCategory;
	}
	//toString method.
	@Override
	public String toString() {
		return "NewUser [firstName=" + firstName + ", lastName=" + lastName + ", dob=" + dob + ", gender=" + gender
				+ ", contactNumber=" + contactNumber + ", email=" + email + ", userid=" + userid + ", password="
				+ password + ", userCategory=" + userCategory + "]";
	}

}
