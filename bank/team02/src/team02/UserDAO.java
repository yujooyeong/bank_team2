package team02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
	
	public static int updateAuthLimit(String name) {
		int status=0;
		Timestamp limittime=Timestamp.valueOf(LocalDateTime.now());
		
		try {
	         Connection conn=ConnectionProvider.getConnection();
	         PreparedStatement pst=conn.prepareStatement(
	               "update \"user\" set authlimit='true',authlimittime=\'"+limittime+"\' where name=\'"+name+"\';");
	         
	         status=pst.executeUpdate();
	         
	         pst.close();
	         conn.close();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return status;
	}
	
	public static boolean CompareATPW(String name, int rATPW) {
		boolean result=false;
	
		try {
			Connection conn=ConnectionProvider.getConnection();
			Statement st=conn.createStatement();
			
			ResultSet rs=st.executeQuery(
					"SELECT * FROM \"user\" WHERE name=\'"+name+"\';");
			
			rs.next();
			int uATPW=rs.getInt("atpw");
			if(uATPW==rATPW)
				result=true;
			st.close();
			conn.close();
			
			return result;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static boolean Check(String name) {
		boolean result=false;
		
		try{
			Connection conn=ConnectionProvider.getConnection();
			Statement st=conn.createStatement();
			
			ResultSet rs=st.executeQuery(
					"SELECT * FROM \"user\" WHERE name=\'"+name+"\';");
			
			rs.next();

			boolean uNFagree=rs.getBoolean("nfagree");
			boolean uOpenpermi=rs.getBoolean("openpermi");
			System.out.println("openpermi:"+uOpenpermi);
			System.out.println("nfagree:"+uNFagree);
			
			if(uNFagree && uOpenpermi)
				result=true;
			
			st.close();
			conn.close();
			
			return result;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
