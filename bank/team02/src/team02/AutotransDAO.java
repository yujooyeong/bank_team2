package team02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.Timestamp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AutotransDAO {
	public static int insertAutotrans(AutotransBean vo) {
		int status=0;
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement pst=conn.prepareStatement(
					"INSERT INTO autotrans VALUES(?,?,?,?,?);");
			
			pst.setDate(1, vo.getTransdate());
			pst.setLong(2, vo.getMaccount());
			pst.setString(3, vo.getBank());
			pst.setLong(4, vo.getYaccount());
			pst.setLong(5, vo.getAmount());
			
			status=pst.executeUpdate();
			
			pst.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
