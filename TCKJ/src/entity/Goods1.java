package entity;

public class Goods1 {
private int goodsid;
private String type;
private String price;
private String versions;
private String cpu;
private String memory;
private String capacity;
private String Mirror;
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
public String getCpu() {
	return cpu;
}
public void setCpu(String cpu) {
	this.cpu = cpu;
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
public String getMirror() {
	return Mirror;
}
public void setMirror(String mirror) {
	Mirror = mirror;
}
public String getBandwidth() {
	return bandwidth;
}
public void setBandwidth(String bandwidth) {
	this.bandwidth = bandwidth;
}
public Goods1() {
	super();
}
@Override
public String toString() {
	return "Goods1 [goodsid=" + goodsid + ", type=" + type + ", price=" + price + ", versions=" + versions + ", cpu="
			+ cpu + ", memory=" + memory + ", capacity=" + capacity + ", Mirror=" + Mirror + ", bandwidth=" + bandwidth
			+ "]";
}

}
