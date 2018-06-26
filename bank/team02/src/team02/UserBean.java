package team02;

import java.sql.Timestamp;
import java.sql.Date;

public class UserBean {
	private String name;
	private String id;
	private int password;
	private int ATPW;
	private int transpw;
	private boolean authlimit;
	private Timestamp limittime;
	private Date joindate;
	private Date birth;
	private String job;
	private boolean NFagree;
	private boolean openpermi;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name=name;
	}
	
	public String getID() {
		return id;
	}
	
	public void setID(String id) {
		this.id=id;
	}
	
	public int getPW() {
		return password;
	}
	
	public void setPW(int password) {
		this.password=password;
	}
	
	public int getATPW() {
		return ATPW;
	}
	
	public void setATPW(int ATPW) {
		this.ATPW=ATPW;
	}
	
	public int getTranspw() {
		return transpw;
	}
	
	public void setTranspw(int transpw) {
		this.transpw=transpw;
	}
	
	public boolean getAuthlimit() {
		return authlimit;
	}
	
	public void setAuthlimit(boolean authlimit) {
		this.authlimit=authlimit;
	}
	
	public Timestamp getLimitTime() {
		return limittime;
	}
	
	public void setLimitTime(Timestamp limittime) {
		this.limittime=limittime;
	}
	
	public Date getJoinDate() {
		return joindate;
	}
	
	public void setJoinDate(Date joindate) {
		this.joindate=joindate;
	}
	
	public Date getBirth() {
		return birth;
	}
	
	public void setBirth(Date birth) {
		this.birth=birth;
	}
	
	public String getJob() {
		return job;
	}
	
	public void setJob(String job) {
		this.job=job;
	}
	
	public boolean getNFagree() {
		return NFagree;
	}
	
	public void setNFagree(boolean NFagree) {
		this.NFagree=NFagree;
	}
	
	public boolean getOpenpermi() {
		return openpermi;
	}
	
	public void setOpenpermi(boolean openpermi){
		this.openpermi=openpermi;
	}
}
