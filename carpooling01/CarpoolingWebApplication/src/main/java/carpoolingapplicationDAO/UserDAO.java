package carpoolingapplicationDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import carpoolingapplication.NewUser;
import carpoolingapplicationUtil.DBUtil;

public class UserDAO {
	//Getting list of users(rider/owner) from database.
	public static List<NewUser> getAllUsers() {
		List<NewUser> UserList = new ArrayList<NewUser>();
		try {
			Connection conn = DBUtil.getConnection();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("Select * from user");
			while (rs.next()) {
				NewUser newUser = new NewUser(rs.getString("FirstName"), rs.getString("LastName"), rs.getString("dob"),
						rs.getString("gender"), rs.getString("contactnumber"), rs.getString("email"),
						rs.getString("userid"), rs.getString("password"), rs.getString("usercategory"));
				UserList.add(newUser);
				DBUtil.closeConnection(conn);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return UserList;
	}
	//Adding new users(rider/owner) details into the database and getting status.
	public static int addUser(NewUser newUser) {
		int status = 0;
		try {
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps=conn.prepareStatement("INSERT INTO user VALUES(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, newUser.getFirstName());
			ps.setString(2, newUser.getLastName());
			ps.setString(3,newUser.getDob());
			ps.setString(4, newUser.getGender());
			ps.setString(5, newUser.getContactNumber());
			ps.setString(6, newUser.getEmail());
			ps.setString(7, newUser.getUserid());
			ps.setString(8, newUser.getPassword());
			ps.setString(9, newUser.getUserCategory());
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
