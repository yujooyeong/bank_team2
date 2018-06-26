package team02;

public class Geometry {
	public Geometry(Viewport viewport, Location location) {
		super();
		this.viewport = viewport;
		this.location = location;
	}
	private Viewport viewport;
	private Location location;
	public Viewport getViewport() {
		return viewport;
	}
	public void setViewport(Viewport viewport) {
		this.viewport = viewport;
	}
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
}
