package pack.customer;

public class Customer {
	
	private int cid;
	private String fname;
	private String lname;
	private String phone;
	private String email;
	private String password;
	private String scode;
	
	//constructor
	public Customer(int cid, String fname, String lname, String phone, String email, String password, String scode) {
		
		this.cid = cid;
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.scode = scode;
	}
	


	//getters
	public int getCid() {
		return cid;
	}
	public String getFname() {
		return fname;
	}
	public String getLname() {
		return lname;
	}
	public String getPhone() {
		return phone;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getScode() {
		return scode;
	}


}
