package pack.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	private static int cidConv;

			//validate the login data 
	
	public static boolean Validate(String email, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where Email = '"+email+"' and Password = '"+password+"' ";
			rs =  stmt.executeQuery(sql); //RUN SQL
			
			if (rs.next()){
				isSuccess = true;
			}
			
			else { 
				isSuccess = false;
			}
		}
		
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	//send cus data email for login control class
	
	public static List<Customer> getCustomer(String email){
		 
		ArrayList<Customer> cus =  new ArrayList<>();
		
		
		//validate
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from customer where Email = '"+email+"' "; 
				rs =  stmt.executeQuery(sql); //RUN sql
				
				while (rs.next()){
					
					int cid = rs.getInt(1);
					String lname = rs.getString(2);
					String fname = rs.getString(3);
					String phone = rs.getString(4);
					String uemail = rs.getString(5);
					String upassword = rs.getString(6);
					String scode = rs.getString(7);
					
					Customer c = new Customer(cid,fname,lname,phone,uemail,upassword,scode);
					cus.add(c);
				}
				

			}
			
			catch(Exception e){
				e.printStackTrace();
				
			}
			
		return cus;
	
	}
	
	
	//insert data for useing cus insert contron class
	public static boolean insertcustomer(String fname, String lname,String phone,String email,String password,String scode){
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into  customer values (0, '"+fname+"','"+lname+"','"+phone+"','"+email+"','"+password+"', '"+scode+"' )";
			int rs =  stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;	
	}
	
	//update cus data useing cus control class
	public static boolean updatecustomer(String cid, String fname,String lname, String phone,String email,String password,String scode) {
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql ="update customer set Fname = '"+fname+"', Lname = '"+lname+"', Phone = '"+phone+"', Email = '"+email+"', Password ='"+password+"', Scode = '"+scode+"'"
						+"where CID = '"+cid+"' ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0 ) {
				isSuccess = true; 
			}
			
			else {
				isSuccess = false;
			}
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	

	//send cus data

	public static List<Customer> getCustomerDetails(String cid){
	
		ArrayList<Customer> cus = new ArrayList<>();
		cidConv = Integer.parseInt(cid);
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where CID = '"+cidConv+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int cid2 = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String password = rs.getString(6);
				String scode = rs.getString(7);
				
				Customer c = new Customer(cid2, fname, lname, phone, email, password, scode );
				cus.add(c);
			}
			
		}
		
		catch (Exception e) {
			e.printStackTrace();	
		}
	
	
		return cus;
	
	}
	
	//delete customer

	public static boolean deleteCustomer(String cid) {
		
		cidConv = Integer.parseInt(cid);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from customer where CID = '"+cidConv+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			
			else {
				isSuccess = false;
			}
		}
		
		catch (Exception e) {
			e.printStackTrace();	
		}
		
		return isSuccess;
	}
	
	}