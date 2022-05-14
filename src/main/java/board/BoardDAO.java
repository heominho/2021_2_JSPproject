package board;

import java.sql.*;
import java.util.ArrayList;

public class BoardDAO {
	private Connection conn;
	private ResultSet rs;

	public BoardDAO() {
		try {
			String jdbcDriver = "jdbc:mysql://localhost:3306/jspdb?characterEncoding=UTF-8&serverTimezone=UTC";
			String dbUser="root";
			String dbPass= "inha1958";	
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getDate() {
		String sql = "select now()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return ""; 
	}
	public int getNext() {
		String sql = "select boardNumber from board order by boardNumber desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int write(String boardTitle, String userID, String boardContent) {
		String sql = "insert into board values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, boardTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, boardContent);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	public ArrayList<Board> getList(int pageNumber){
		String sql = "select * from board where boardNumber < ? and boardAvailable = 1 order by boardNumber desc limit 10";
		ArrayList<Board> list = new ArrayList<Board>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board board = new Board();
				board.setBoardNumber(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setUserID(rs.getString(3));
				board.setBoardDate(rs.getString(4));
				board.setBoardContent(rs.getString(5));
				board.setBoardAvailable(rs.getInt(6));
				list.add(board);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean nextPage(int pageNumber) {
		String sql = "select * from board where boardNumber < ? and boardAvailable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public Board getBoard(int boardNumber) {
		String sql = "select * from board where boardNumber = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNumber);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Board board = new Board();
				board.setBoardNumber(rs.getInt(1));
				board.setBoardTitle(rs.getString(2));
				board.setUserID(rs.getString(3));
				board.setBoardDate(rs.getString(4));
				board.setBoardContent(rs.getString(5));
				board.setBoardAvailable(rs.getInt(6));
				return board;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int update(int boardNumber, String boardTitle, String boardContent) {
		String sql = "update board set boardTitle = ?, boardContent = ? where boardNumber = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardTitle);
			pstmt.setString(2, boardContent);
			pstmt.setInt(3, boardNumber);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; 
	}

	public int delete(int boardNumber) {
		String sql = "update board set boardAvailable = 0 where boardNumber = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNumber);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; 
	}
}
