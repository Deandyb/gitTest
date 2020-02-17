package entity;

public class Goods2 {
	private int goodsid;
	private String type;
	private String price;
	private String versions;
	private String memory;
	private String capacity;
	private String datebase;
	private String OperatingSystem;
	@Override
	public String toString() {
		return "Goods1 [goodsid=" + goodsid + ", type=" + type + ", price=" + price + ", versions=" + versions
				+ ", memory=" + memory + ", capacity=" + capacity + ", datebase=" + datebase + ", OperatingSystem="
				+ OperatingSystem + "]";
	}
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
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getDatebase() {
		return datebase;
	}
	public void setDatebase(String datebase) {
		this.datebase = datebase;
	}
	public String getOperatingSystem() {
		return OperatingSystem;
	}
	public void setOperatingSystem(String operatingSystem) {
		OperatingSystem = operatingSystem;
	}
	public Goods2() {
		super();
	}
	
}
