package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	/* DB 접속 */
	public MemberDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/member";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Member> getList(){
		String SQL = "SELECT * FROM MEMBER WHERE memberNumber = 1 ORDER BY memberID DESC";
		ArrayList<Member> list = new ArrayList<Member>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member();
				member.setMemberID(rs.getInt(1));
				member.setMemberName(rs.getString(2));
				member.setMemberPhone(rs.getInt(3));
				member.setMemberAddress(rs.getString(4));
				member.setMemberOrder(rs.getString(5));
				member.setMemberMoney(rs.getInt(6));
				member.setMemberInfo(rs.getString(7));
				list.add(member);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public ArrayList<Member> getList2(){
		String SQL = "SELECT * FROM MEMBER ORDER BY memberID DESC";
		ArrayList<Member> list = new ArrayList<Member>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member();
				member.setMemberID(rs.getInt(1));
				member.setMemberName(rs.getString(2));
				member.setMemberPhone(rs.getInt(3));
				member.setMemberAddress(rs.getString(4));
				member.setMemberOrder(rs.getString(5));
				member.setMemberMoney(rs.getInt(6));
				member.setMemberInfo(rs.getString(7));
				list.add(member);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int write(String memberName, int memberPhone, String memberAddress, String memberOrder, int memberMoney, String memberInfo) {
		String SQL = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, memberName);
			pstmt.setInt(3, memberPhone);
			pstmt.setString(4, memberAddress);
			pstmt.setString(5, memberOrder);
			pstmt.setInt(6, memberMoney);
			pstmt.setString(7, memberInfo);
			pstmt.setInt(8, 1);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int getNext() {
		String SQL = "SELECT memberID FROM MEMBER ORDER BY memberID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	public int delete(int memberNumber) {
		String SQL = "UPDATE MEMBER SET memberNumber = 0 WHERE memberID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, memberNumber);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
