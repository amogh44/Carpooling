package carpoolingapplicationUtil;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

	// Estabilishing a connection
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "asuszenfone5");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}

	// Closing the connection.
	public static void closeConnection(Connection conn) {
		try {
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
}
