package DB;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionManager {
	// กําหนดตัวแปรการเชื่อมต่อฐานข้อมูล

	static Connection con;

	public static Connection getConnection() {

		try {

			// Load Driver สําหรับ MySQL

			Class.forName("com.mysql.jdbc.Driver");

			// ระบุรายละเอียดของ เครื่อง พอร์ต ชื่อฐานข้อมูล

			String url = "jdbc:mysql://localhost:3306/hawkward";

			// กําหนดให้มีการเข้ารหัสตัวอักษรแบบ UTF-8

			String jdbcutf8 = "?useUnicode=true&characterEncoding=UTF-8";

			// กําหนดชื่อและรหัสผ่านของผู้ใช้ฐานข้อมูล

			String user = "root";

			String psswd = "a58674391";

			// สร้างการเชื่อมต่อฐานข้อมูล

			con = DriverManager.getConnection(url + jdbcutf8, user, psswd);

		} catch (SQLException ex) {

			ex.printStackTrace();

		} catch (ClassNotFoundException e) {

			e.printStackTrace();

		}

		return con;

	}

	public Statement createStatement() {
		// TODO Auto-generated method stub
		return null;
	}
}
