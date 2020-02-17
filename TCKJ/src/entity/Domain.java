package entity;

public class Domain {
private int damainid;
private int userid;
private String name;
private String suffix;
private String time;
public int getDamainid() {
	return damainid;
}
public void setDamainid(int damainid) {
	this.damainid = damainid;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSuffix() {
	return suffix;
}
public void setSuffix(String suffix) {
	this.suffix = suffix;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
@Override
public String toString() {
	return "Domain [damainid=" + damainid + ", userid=" + userid + ", name=" + name + ", suffix=" + suffix + ", time="
			+ time + "]";
}
public Domain() {
	super();
}

}
