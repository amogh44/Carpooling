package carpoolingapplicationDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import carpoolingapplication.Rider;
import carpoolingapplicationUtil.DBUtil;

public class RiderDAO {
	//owners
	public static List<Rider> getAllUsers() {
		List<Rider> RiderList = new ArrayList<Rider>();
		try {
			Connection conn = DBUtil.getConnection();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("Select * from rider");
			while (rs.next()) {
				Rider rider = new Rider(rs.getString("contactnumber"), rs.getString("pickup"), rs.getString("dropaddress"),
						rs.getString("city"), rs.getString("zipcode"));
				RiderList.add(rider);
				DBUtil.closeConnection(conn);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return RiderList;
	}

	public static int addRider(Rider rider) {
		int status = 0;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps=conn.prepareStatement("INSERT INTO rider VALUES(?,?,?,?,?)");
			ps.setString(1, rider.getContactnumber());
			ps.setString(2, rider.getPickup());
			ps.setString(3,rider.getDropaddress());
			ps.setString(4, rider.getCity());
			ps.setString(5, rider.getZipcode());
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
