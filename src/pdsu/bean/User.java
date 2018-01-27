package pdsu.bean;

public class User {
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String username;
	private String password;
	private String sex;
	private int age;
	private String city;
	private String intersting;
	private int status;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getIntersting() {
		return intersting;
	}
	public void setIntersting(String intersting) {
		this.intersting = intersting;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password
				+ ", sex=" + sex + ", age=" + age + ", getUsername()="
				+ getUsername() + ", getPassword()=" + getPassword()
				+ ", getSex()=" + getSex() + ", getAge()=" + getAge()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}
