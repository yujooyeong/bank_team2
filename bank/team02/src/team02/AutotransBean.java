package team02;

import java.sql.Date;

public class AutotransBean {
	
	private Date transdate;
	private long maccount;
	private String bank;
	private long yaccount;
	private long amount;
	
	public Date getTransdate() {
		return transdate;
	}
	
	public void setTranslate(Date transdate) {
		this.transdate = transdate;
	}
	
	public long getMaccount() {
		return maccount;
	}
	
	public void setMaccount(long maccount) {
		this.maccount = maccount;
	}
	
	public String getBank() {
		return bank;
	}
	
	public void setBank(String bank) {
		this.bank = bank;
	}
	
	public long getYaccount() {
		return yaccount;
	}
	
	public void setYaccount(long yaccount) {
		this.yaccount = yaccount;
	}
	
	public long getAmount() {
		return amount;
	}
	
	public void setAmount(long amount) {
		this.amount = amount;
	}
}
