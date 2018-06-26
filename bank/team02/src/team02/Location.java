package team02;

public class Location {
	public Location(double lng, double lat) {
		super();
		this.lng = lng;
		this.lat = lat;
	}
	private double lng;
	private double lat;
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
}
