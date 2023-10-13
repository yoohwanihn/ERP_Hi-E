package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SurveyDao {
	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;
	private DataSource ds;
	
	
	public SurveyDao() {
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
		}
		catch(Exception err) {
			System.out.println("SurveyDao: " + err);
		}
	}
	
	
	//연결 끊기
	public void freeConnection() {
		if(rs != null)
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		if(stmt != null)
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		if(con != null)
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	
	//survey 리스트 뿌려주기!
	public List getSurveyList() {
		String sql = "select * from tbl_survey_info";
		Vector vector = new Vector();

		try {
			con = ds.getConnection();
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				SurveyDto surveydto = new SurveyDto();
				surveydto.setSur_num(rs.getInt("sur_num"));
				surveydto.setSur_title(rs.getString("sur_title"));
				surveydto.setSur_startdate(rs.getString("sur_startdate"));
				surveydto.setSur_finishdate(rs.getString("sur_finishdate"));
				surveydto.setSur_group(rs.getString("sur_group"));
				surveydto.setSur_position(rs.getString("sur_position"));
				surveydto.setSur_permit(rs.getString("sur_permit"));
				
				vector.add(surveydto);
			}
			
		}
		catch(Exception e) {
			System.out.println("surveytable.jsp: " + e);
		}
		finally {
			freeConnection();
		}
		return vector;
	}
	
	
	
	
	
	
	
	
}



