package Bean;

public class userBean {
int uid;
String username;
String password;
String status;
String stdid;
String name;
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getStdid() {
	return stdid;
}
public void setStdid(String stdid) {
	this.stdid = stdid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
@Override
public String toString() {
	return "userBean [uid=" + uid + ", username=" + username + ", password=" + password + ", status=" + status
			+ ", stdid=" + stdid + ", name=" + name + "]";
}
public userBean(int uid, String username, String password, String status, String stdid, String name) {
	super();
	this.uid = uid;
	this.username = username;
	this.password = password;
	this.status = status;
	this.stdid = stdid;
	this.name = name;
}
public userBean() {
	super();
	// TODO Auto-generated constructor stub
}


}
