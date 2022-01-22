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
	
	/* DB ���� */
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
		String SQL = "SELECT * FROM MEMBER";
		ArrayList<Member> list = new ArrayList<Member>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member();
				member.setMemberName(rs.getString(1));
				member.setMemberPhone(rs.getInt(2));
				member.setMemberAddress(rs.getString(3));
				member.setMemberOrder(rs.getString(4));
				member.setMemberMoney(rs.getInt(5));
				member.setMemberInfo(rs.getString(6));
				list.add(member);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
