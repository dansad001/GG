package Service;

import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;

import Bean.userBean;
import DB.ConnectionManager;



public class LoginDAO {
	static Connection currentCon = null;
	static ResultSet rs = null;
	static PreparedStatement prepareStatement = null;

	public static userBean login(String userName, String password) throws

	SQLException {

		userBean userBean = null;
		String searchQuery = "SELECT * FROM users WHERE username =? AND password =? ";

		// System.out.println("Query: " + searchQuery);

		try {

			// connect to DB
			currentCon = ConnectionManager.getConnection();
			PreparedStatement pos = currentCon.prepareStatement(searchQuery);
			pos.setString(1, userName);
			pos.setString(2, password);
			rs = pos.executeQuery(); // run sql
			if (rs.next()) {

				int uid = rs.getInt("uid");
				String Password = rs.getString("password");
				String Username = rs.getString("username");
				String Name = rs.getString("name");
				String Status = rs.getString("status");
				
		
		
				String generatedPassword = null;
				MessageDigest md = MessageDigest.getInstance("MD5");
				md.update(Password.getBytes());
				byte[] bytes = md.digest();
				StringBuilder sb = new StringBuilder();
				for (int i = 0; i < bytes.length; i++) {
					sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
				}
				generatedPassword = sb.toString();
				//////////////////////////////////////////
				userBean = new userBean();
				userBean.setUid(uid);
				userBean.setPassword(generatedPassword);
				userBean.setName(Name);
				userBean.setUsername(Username);
				userBean.setStatus(Status);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			currentCon.close();
		}
		return userBean;

	}
}
