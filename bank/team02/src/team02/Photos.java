package team02;

import java.util.List;

public class Photos {
	public Photos(String photo_reference, int width, List<String> html_attributions, int height) {
		super();
		this.photo_reference = photo_reference;
		this.width = width;
		this.html_attributions = html_attributions;
		this.height = height;
	}
	private String photo_reference;
	private int width;
	private List<String> html_attributions;
	private int height;
	public String getPhoto_reference() {
		return photo_reference;
	}
	public void setPhoto_reference(String photo_reference) {
		this.photo_reference = photo_reference;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public List<String> getHtml_attributions() {
		return html_attributions;
	}
	public void setHtml_attributions(List<String> html_attributions) {
		this.html_attributions = html_attributions;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
}