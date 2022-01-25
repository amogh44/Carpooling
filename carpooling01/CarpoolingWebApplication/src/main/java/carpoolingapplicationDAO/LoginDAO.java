package carpoolingapplicationDAO;

import carpoolingapplication.NewUser;
import carpoolingapplicationUtil.DBUtil;
import java.sql.*;

public class LoginDAO {
	//Checking if the user is valid or not. and returning the user category(role).
	public static String isUserValid(NewUser user) {
		
		String role = null;
		
		try {	
			Connection conn = DBUtil.getConnection();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT usercategory FROM user WHERE userid = '"+ user.getUserid() +"' AND password = '"+ user.getPassword() +"'");
			
			while (rs.next()) {
			    role = rs.getString(1);
			}
			
			DBUtil.closeConnection(conn);
		}
		catch(Exception e){
				e.printStackTrace();
			}
			return role;
}
}