package team02;

import java.util.List;

public class Results {
	public Results(String regerence, List<String> types, String scope, String icon, String name,
			Opening_hours opening_hours, float rating, Geometry geometry, String vicinity, List<Photos> photos,
			String place_id) {
		super();
		this.regerence = regerence;
		this.types = types;
		this.scope = scope;
		this.icon = icon;
		this.name = name;
		this.opening_hours = opening_hours;
		this.rating = rating;
		this.geometry = geometry;
		this.vicinity = vicinity;
		this.photos = photos;
		this.place_id = place_id;
	}
	private String regerence;
	private List<String> types;
	private String scope;
	private String icon;
	private String name;
	private Opening_hours opening_hours;
	private float rating;
	private Geometry geometry;
	private String vicinity;
	private List<Photos> photos;
	private String place_id;
	public String getRegerence() {
		return regerence;
	}
	public void setRegerence(String regerence) {
		this.regerence = regerence;
	}
	public List<String> getTypes() {
		return types;
	}
	public void setTypes(List<String> types) {
		this.types = types;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Opening_hours getOpening_hours() {
		return opening_hours;
	}
	public void setOpening_hours(Opening_hours opening_hours) {
		this.opening_hours = opening_hours;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public Geometry getGeometry() {
		return geometry;
	}
	public void setGeometry(Geometry geometry) {
		this.geometry = geometry;
	}
	public String getVicinity() {
		return vicinity;
	}
	public void setVicinity(String vicinity) {
		this.vicinity = vicinity;
	}
	public List<Photos> getPhotos() {
		return photos;
	}
	public void setPhotos(List<Photos> photos) {
		this.photos = photos;
	}
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
}
