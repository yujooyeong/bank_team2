package team02;

import java.util.List;

public class ResultSet {
	public ResultSet(List<String> html_attributions, List<Results> results, String status) {
		super();
		this.html_attributions = html_attributions;
		this.results = results;
		this.status = status;
	}
	private List<String> html_attributions;
	private List<Results> results;
	private String status;
	public List<String> getHtml_attributions() {
		return html_attributions;
	}
	public void setHtml_attributions(List<String> html_attributions) {
		this.html_attributions = html_attributions;
	}
	public List<Results> getResults() {
		return results;
	}
	public void setResults(List<Results> results) {
		this.results = results;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
