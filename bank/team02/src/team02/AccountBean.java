package team02;

import java.sql.Date;

public class AccountBean {
	private long accnum;
	private String owner;
	private long balance;
	private String itemname;
	private Date opendate;
	private Date expirdate;
	private float rate;
	private long translimit;
	private String goal;
	private String origin;
	private boolean isowner;
	private boolean isagree;
	
	public long getAccnum() {
		return accnum;
	}
	
	public void setAccnum(long accnum) {
		this.accnum=accnum;
	}
	
	public String getOwner() {
		return owner;
	}
	
	public void setOwner(String owner) {
		this.owner=owner;
	}
	
	public long getBalance() {
		return balance;
	}
	
	public void setBalance(long balance) {
		this.balance=balance;
	}
	
	public String getItemname() {
		return itemname;
	}
	
	public void setItemname(String itemname) {
		this.itemname=itemname;
	}
	
	public Date getOpendate() {
		return opendate;
	}
	
	public void setOpendate(Date opendate) {
		this.opendate=opendate;
	}
	
	public Date getExpirdate() {
		return expirdate;
	}
	
	public void setExpirdate(Date expirdate) {
		this.expirdate=expirdate;
	}
	
	public float getRate() {
		return rate;
	}
	
	public void setRate(float rate) {
		this.rate=rate;
	}
	
	public long getTranslimit() {
		return translimit;
	}
	
	public void setTranslimit(long translimit) {
		this.translimit=translimit;
	}
	
	public String getGoal() {
		return goal;
	}
	
	public void setGoal(String goal) {
		this.goal=goal;
	}
	
	public String getOrigin() {
		return origin;
	}
	
	public void setOrigin(String origin) {
		this.origin=origin;
	}
	
	public boolean getIsowner() {
		return isowner;
	}
	
	public void setIsowner(boolean isowner) {
		this.isowner=isowner;
	}
	
	public boolean getIsagree() {
		return isagree;
	}
	
	public void setIsagree(boolean isagree) {
		this.isagree=isagree;
	}
}
