package carpoolingapplicationDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import carpoolingapplication.Customer;
import carpoolingapplicationUtil.DBUtil;

public class CustomerDAO {
	//Getting list of customers(rider) from database.
	public static List<Customer> getAllUsers() {
		List<Customer> CustomerList = new ArrayList<Customer>();
		try {
			Connection conn = DBUtil.getConnection();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("Select * from customer");
			while (rs.next()) {
				Customer customer = new Customer(rs.getString("contactnumber"), rs.getString("pickup"), rs.getString("dropaddress"),
						rs.getString("city"), rs.getString("zipcode"));
				CustomerList.add(customer);
				DBUtil.closeConnection(conn);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return CustomerList;
	}
	//Adding new customer(rider) details into the database and getting status.
	public static int addCustomer(Customer customer) {
		int status = 0;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps=conn.prepareStatement("INSERT INTO customer VALUES(?,?,?,?,?)");
			ps.setString(1, customer.getContactnumber());
			ps.setString(2, customer.getPickup());
			ps.setString(3, customer.getDropaddress());
			ps.setString(4, customer.getCity());
			ps.setString(5, customer.getZipcode());
			status = ps.executeUpdate();
			System.out.println(status);
		}
		catch (Exception e) {
		// TODO: handle exception
			e.printStackTrace();
	}
		return status;
		
	}
}
