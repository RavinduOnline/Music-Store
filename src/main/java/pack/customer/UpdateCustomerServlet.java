package pack.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateCustomerServlet
 */
@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cid = request.getParameter("cid");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String scode = request.getParameter("scode");
		
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatecustomer(cid, fname, lname, phone, email, password, scode);
		
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(cid);
			request.setAttribute("cusDetails", cusDetails);
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(cid);
			request.setAttribute("cusDetails", cusDetails);
			
			out.println("<script type = 'text/javascript'>");
				out.println("alert('Update Failed. Try Again Later');");
				out.println("location = 'login.jsp'");
			out.println("</script>");
		}
		
		
	}

}
