package team02;

import java.util.Date;

public class TxHistoryBean {
	private String type;
	private long maccount;
	private long yaccount;
	private long amount;
	private String bank;
	private Date date;
	private long sum;
	
	public String getType(){
		return type;
	}
	public void setType(String type){
		this.type=type;
	}
	
	public long getMaccount(){
		return maccount;
	}
	public void setMaccount(long maccount){
		this.maccount=maccount;
	}
	
	public long getYaccount(){
		return yaccount;
	}
	public void setYaccount(long yaccount){
		this.yaccount=yaccount;
	}
	
	public long getAmount(){
		return amount;
	}
	public void setAmount(long amount){
		this.amount=amount;
	}
	
	public long getSum(){
		return sum;
	}
	public void setSum(long sum){
		this.sum=sum;
	}
	
	public String getBank(){
		return bank;
	}
	public void setBank(String bank){
		this.bank=bank;
	}
	
	public Date getDate(){
		return date;
	}
	public void setDate(Date date){
		this.date=date;
	}
}
