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


@WebServlet("/DeleteAccountServlet")

public class DeleteAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cid = request.getParameter("cid");
		
		boolean isTrue = CustomerDBUtil.deleteCustomer(cid);
		
		if(isTrue == true) {
			out.println("<script type = 'text/javascript'>");
				out.println("alert('Account Deleted');");
				out.println("location = 'index.jsp'");
			out.println("</script>");
			
		}
		
		else {
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(cid);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
	}

}
	
}
