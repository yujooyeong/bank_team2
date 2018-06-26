package team02;

public class Viewport {
	public Viewport(Location southwest, Location northeast) {
		super();
		this.southwest = southwest;
		this.northeast = northeast;
	}
	private Location southwest;
	private Location northeast;
	public Location getSouthwest() {
		return southwest;
	}
	public void setSouthwest(Location southwest) {
		this.southwest = southwest;
	}
	public Location getNortheast() {
		return northeast;
	}
	public void setNortheast(Location northeast) {
		this.northeast = northeast;
	}
}
