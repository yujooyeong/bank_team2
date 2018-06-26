package team02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class TxHistoryDAO {
	
	public static List<TxHistoryBean> selectTxHistory(long maccount, int tyear, int tmonth, String type) {
		List<TxHistoryBean> TxHistory = new ArrayList<TxHistoryBean>();
		try {
			Connection conn=ConnectionProvider.getConnection();
			Statement st=conn.createStatement();
			
			ResultSet rs=st.executeQuery(
					"SELECT * FROM transhistory WHERE type=\'"+type+"\'AND maccount="+maccount+"AND EXTRACT(YEAR FROM date)=\'"+tyear+"\'AND EXTRACT(MONTH FROM date)=\'"+tmonth+"\';");
			//jsp에서 분석하고싶은 계좌랑 년월 선택한거 받기
			
			while(rs.next()) {
				TxHistoryBean c=new TxHistoryBean();
				
				String cType=rs.getString("type");
				long cMaccount=rs.getInt("maccount");
				long cYaccount=rs.getInt("yaccount");
				long cAmount=rs.getInt("amount");
				String cBank=rs.getString("bank");
				Date cDate=rs.getDate("date");

				System.out.println(cType+" "+cMaccount+" "+cYaccount+" "+cAmount+" "+cDate+" "+cBank);


				c.setType(cType);
				c.setMaccount(cMaccount);
				c.setYaccount(cYaccount);
				c.setAmount(cAmount);
				c.setDate(cDate);
				c.setBank(cBank);
				
				TxHistory.add(c);
			}
			st.close();
			conn.close();
			
			return TxHistory;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static List<TxHistoryBean> selectTxHistory2(long maccount) {
		List<TxHistoryBean> TxHistory = new ArrayList<TxHistoryBean>();
		try {
			Connection conn=ConnectionProvider.getConnection();
			Statement st=conn.createStatement();
			
			ResultSet rs=st.executeQuery("SELECT DISTINCT maccount FROM transhistory ORDER BY maccount;");
			
			while(rs.next()) {
				TxHistoryBean c=new TxHistoryBean();
				

				long cMaccount=rs.getInt("maccount");


				System.out.println(cMaccount);

				c.setMaccount(cMaccount);

				
				TxHistory.add(c);
			}
			st.close();
			conn.close();
			
			return TxHistory;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public static List<TxHistoryBean> selectTxHistory3(long maccount, int tyear, int tmonth, String type) {
		List<TxHistoryBean> TxHistory = new ArrayList<TxHistoryBean>();
		try {
			Connection conn=ConnectionProvider.getConnection();
			Statement st=conn.createStatement();
			
			ResultSet rs=st.executeQuery("SELECT SUM(amount), bank FROM transhistory "
					+ "WHERE type=\'"+type+"\'AND maccount="+maccount+"AND EXTRACT(YEAR FROM date)=\'"+tyear
					+"\'AND EXTRACT(MONTH FROM date)=\'"+tmonth+"\'GROUP BY bank ORDER BY SUM(amount) DESC;");
			
			while(rs.next()) {
				TxHistoryBean c=new TxHistoryBean();
				
				long cSum=rs.getInt("sum");
				String cBank=rs.getString("bank");


				System.out.println(cSum+" "+cBank);


				c.setSum(cSum);
				c.setBank(cBank);

				
				TxHistory.add(c);
			}
			st.close();
			conn.close();
			
			return TxHistory;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
