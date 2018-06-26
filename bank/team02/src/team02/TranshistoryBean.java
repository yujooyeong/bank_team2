package team02;

public class TranshistoryBean {
	
	private String type;
	private long maccount;
	private String bank;
	private long yaccount;
	private long amount;

	public TranshistoryBean() {
		
	}
	
	public TranshistoryBean(String type, long maccount, String bank, long yaccount, long amount) {
		this.type=type;
		this.maccount=maccount;
		this.bank=bank;
		this.yaccount=yaccount;
		this.amount=amount;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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
