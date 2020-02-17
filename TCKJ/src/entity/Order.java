package entity;

public class Order {
private int orderid;
private int userid;
private String time;
private String goodsname;
private String price;
private String type;
private String time2;
private String tel;
private String email;
private String adress;
private String username;
public int getOrderid() {
	return orderid;
}
public void setOrderid(int orderid) {
	this.orderid = orderid;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getGoodsname() {
	return goodsname;
}
public void setGoodsname(String goodsname) {
	this.goodsname = goodsname;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}

public String getTime2() {
	return time2;
}
public void setTime2(String time2) {
	this.time2 = time2;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAdress() {
	return adress;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public void setAdress(String adress) {
	this.adress = adress;
}
public Order() {
	super();
}
@Override
public String toString() {
	return "Order [orderid=" + orderid + ", userid=" + userid + ", time=" + time + ", goodsname=" + goodsname
			+ ", price=" + price + ", type=" + type + ", time2=" + time2 + ", tel=" + tel + ", email=" + email
			+ ", adress=" + adress + ", username=" + username + "]";
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}


}
