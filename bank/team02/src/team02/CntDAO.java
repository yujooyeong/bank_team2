package team02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.Timestamp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CntDAO {
	
	public static boolean Init(String name) {
		
		try{
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement pst=conn.prepareStatement(
			"INSERT INTO cnt values(\'"+name+"\');");
		
			pst.executeUpdate();
			
			pst.close();
			conn.close();
				
			return true;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static int Get(String name) {
		int result;
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			Statement st=conn.createStatement();
				
			ResultSet rs=st.executeQuery(
			"SELECT * FROM cnt WHERE name=\'"+name+"\';");
			
			rs.next();
			int count=rs.getInt("count");
			System.out.println("count:"+count);
			
			result=count;
			
			st.close();
			conn.close();
			
			System.out.println("get result:"+result);
			return result;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public static boolean plus(String name, int ncnt) {
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement pst=conn.prepareStatement(
			"update cnt set count="+ncnt+" where name=\'"+name+"\';");
					
			pst.executeUpdate();
			pst.close();
			conn.close();
			
			return true;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static boolean delete(String name) {
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement pst=conn.prepareStatement(
			"delete from cnt where name=\'"+name+"\';");
					
			pst.executeUpdate();
			pst.close();
			conn.close();
			
			return true;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
}
