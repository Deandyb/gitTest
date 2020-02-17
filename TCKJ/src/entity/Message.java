package entity;

public class Message {
private int id;
private String name;
private String tel;
private String email;
private String message;
private String date;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
@Override
public String toString() {
	return "Message [id=" + id + ", name=" + name + ", tel=" + tel + ", email=" + email + ", message=" + message
			+ ", date=" + date + "]";
}
public Message() {
	super();
}

}
