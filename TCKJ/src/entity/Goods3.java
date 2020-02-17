package entity;

public class Goods3 {
	private int goodsid;
	private String type;
	private String price;
	private String versions;
	private String capacity;
	private String bandwidth;
	public int getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(int goodsid) {
		this.goodsid = goodsid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getVersions() {
		return versions;
	}
	public void setVersions(String versions) {
		this.versions = versions;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getBandwidth() {
		return bandwidth;
	}
	public void setBandwidth(String bandwidth) {
		this.bandwidth = bandwidth;
	}
	@Override
	public String toString() {
		return "goods3 [goodsid=" + goodsid + ", type=" + type + ", price=" + price + ", versions=" + versions
				+ ", capacity=" + capacity + ", bandwidth=" + bandwidth + "]";
	}
	public Goods3() {
		super();
	}
	
}
