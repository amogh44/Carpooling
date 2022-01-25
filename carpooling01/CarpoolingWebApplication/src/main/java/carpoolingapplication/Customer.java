package carpoolingapplication;

public class Customer {
	//Variables defined
	String contactnumber;
	String pickup;
	String dropaddress;
	String city;
	String zipcode;
	//Constructor with fields
	public Customer(String contactnumber, String pickup, String dropaddress, String city, String zipcode) {
		super();
		this.contactnumber = contactnumber;
		this.pickup = pickup;
		this.dropaddress = dropaddress;
		this.city = city;
		this.zipcode = zipcode;
	}
	//Default constructor
	public Customer() {
	}
	//Getters and Setters
	public String getContactnumber() {
		return contactnumber;
	}

	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}

	public String getPickup() {
		return pickup;
	}

	public void setPickup(String pickup) {
		this.pickup = pickup;
	}

	public String getDropaddress() {
		return dropaddress;
	}

	public void setDrop(String dropaddress) {
		this.dropaddress = dropaddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	//toString method.
	@Override
	public String toString() {
		return "Rider [contactnumber=" + contactnumber + ", pickup=" + pickup + ", dropaddress=" + dropaddress + ", city=" + city
				+ ", zipcode=" + zipcode + "]";
	}

}
