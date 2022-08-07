package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/scrn2")
public class UserDataServlet extends HttpServlet 
{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		String age = req.getParameter("age");
		String country = req.getParameter("cntry");
		String gender = req.getParameter("gndr");
		
		req.setAttribute("age", age);
		req.setAttribute("cntry", country);
		req.setAttribute("gndr", gender);
		
		RequestDispatcher rd = req.getRequestDispatcher("userGetData.jsp");
		rd.forward(req, resp);
		
		
		
	}

}
