package team02;

import java.sql.Date;

public class OtherbankBean {

	private String bankname;
	private Long account;
	private String owner;
	
	public String getBankname() {
		return bankname;
	}
	
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	
	public Long getAccount() {
		return account;
	}
	
	public void setAccount(Long account) {
		this.account = account;
	}
	
	public String getOwner() {
		return owner;
	}
	
	public void setOwner(String owner) {
		this.owner = owner;
	}
}
