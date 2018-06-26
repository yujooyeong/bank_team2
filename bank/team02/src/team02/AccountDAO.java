package team02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.Timestamp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO {
	
	public static int insertAccount(AccountBean vo) {
		int status=0;
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement pst=conn.prepareStatement(
					"INSERT INTO account VALUES(?,?,?,?,?,?,?,?,?,?,?,?);");
			
			pst.setLong(1, vo.getAccnum());
			pst.setString(2, vo.getOwner());
			pst.setLong(3, vo.getBalance());
			pst.setString(4, vo.getItemname());
			pst.setDate(5, vo.getOpendate());
			pst.setDate(6, vo.getExpirdate());
			pst.setFloat(7, vo.getRate());
			pst.setLong(8, vo.getTranslimit());
			pst.setString(9, vo.getGoal());
			pst.setString(10, vo.getOrigin());
			pst.setBoolean(11, vo.getIsowner());
			pst.setBoolean(12, vo.getIsagree());
		
			status=pst.executeUpdate();
			
			pst.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
