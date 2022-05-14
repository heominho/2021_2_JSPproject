package user;

import java.sql.*;

public class UserDAO {
		
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public UserDAO() {
		try {
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbUser="root";
			String dbPass= "inha1958";	
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	public int login(String userID, String userPassword) { 
		String sql = "SELECT userPassword FROM user WHERE userID = ?";
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //�α��� ����
				}else
					return 0; //���̺� ��й�ȣ ���ų� ��й�ȣ Ʋ��
			}
			return -1; //���̺� ���̵� ����
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //DB���� ����
	}
	
	public int join(User user) {
		  String sql = "insert into user values(?, ?, ?, ?, ?)";
		  try {
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, user.getUserID());
		    pstmt.setString(2, user.getUserPassword());
		    pstmt.setString(3, user.getUserName());
		    pstmt.setString(4, user.getUserGender());
		    pstmt.setString(5, user.getUserAge());
		    return pstmt.executeUpdate();
		  }catch (Exception e) {
		 	e.printStackTrace();
		  }
		  return -1;
		}


}
