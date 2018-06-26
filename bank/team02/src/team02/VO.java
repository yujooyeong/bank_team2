package team02;

public class VO {
	private int reg_num;
	private String title;
	private String name;
	private String memo;
	private String date;
	private int password;
	private int hit;
	private int ref;
	private int indent;
	private int step;
	private boolean dayNew;
	
	public VO() {}
	public VO(int reg_num, String title, String name, String memo, String date, int password, int hit, int ref, int indent, int step, Boolean dayNew) {
		this.reg_num = reg_num;
		this.title = title;
		this.name = name;
		this.memo = memo;
		this.date = date;
		this.hit = hit;
		this.ref = ref;
		this.indent = indent;
		this.step = step;
		this.dayNew = dayNew;
	}
	public int getReg_num() {
		return reg_num;
	}
	public void setReg_num(int reg_num) {
		this.reg_num = reg_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getIndent() {
		return indent;
	}
	public void setIndent(int indent) {
		this.indent = indent;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public boolean isDayNew() {
		return dayNew;
	}
	public void setDayNew(boolean dayNew) {
		this.dayNew = dayNew;
	}
	
}
