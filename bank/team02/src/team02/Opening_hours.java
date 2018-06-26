package team02;

import java.util.List;

public class Opening_hours {
	public Opening_hours(List<String> weekday_text) {
		super();
		this.weekday_text = weekday_text;
	}

	private List<String> weekday_text;

	public List<String> getWeekday_text() {
		return weekday_text;
	}

	public void setWeekday_text(List<String> weekday_text) {
		this.weekday_text = weekday_text;
	}
}
