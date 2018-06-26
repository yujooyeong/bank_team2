package team02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.Timestamp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OtherbankDAO {
	public static int insertOtherbank(OtherbankBean vo) {
		int status=0;
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement pst=conn.prepareStatement(
					"INSERT INTO otherbank VALUES(?,?,?);");
			
			pst.setString(1, vo.getBankname());
			pst.setLong(2, vo.getAccount());
			pst.setString(3, vo.getOwner());
			
			status=pst.executeUpdate();
			
			pst.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
