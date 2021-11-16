 package pack.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Customerinsert")

public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		String scode = request.getParameter("scode");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(fname, lname, phone, email, password, scode);
		
		if(isTrue == true) { //useing JS
			out.println("<script type = 'text/javascript'>");
				out.println("alert('Your Account Created Please Login');");
				out.println("location = 'login.jsp'");
			out.println("</script>");
		}
		
		else{ //useing JS
			out.println("<script type = 'text/javascript'>");
				out.println("alert('Account not created try again');");
				out.println("location = 'customerinsert.jsp'");
			out.println("</script>");
		}

	}

}
