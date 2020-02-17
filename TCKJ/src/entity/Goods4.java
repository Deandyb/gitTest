package entity;

public class Goods4 {
	private int goodsid;
	private String type;
	private String price;
	private String versions;
	private int cont1;
	private int cont2;
	private int cont3;
	private int cont4;
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
	public int getCont1() {
		return cont1;
	}
	public void setCont1(int cont1) {
		this.cont1 = cont1;
	}
	public int getCont2() {
		return cont2;
	}
	public void setCont2(int cont2) {
		this.cont2 = cont2;
	}
	public int getCont3() {
		return cont3;
	}
	public void setCont3(int cont3) {
		this.cont3 = cont3;
	}
	public int getCont4() {
		return cont4;
	}
	public void setCont4(int cont4) {
		this.cont4 = cont4;
	}
	@Override
	public String toString() {
		return "goods4 [goodsid=" + goodsid + ", type=" + type + ", price=" + price + ", versions=" + versions
				+ ", cont1=" + cont1 + ", cont2=" + cont2 + ", cont3=" + cont3 + ", cont4=" + cont4 + "]";
	}
	public Goods4() {
		super();
	}
	
}
