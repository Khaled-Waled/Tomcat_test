package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/scrn1")
public class CredentialsServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		try
		{
			String username = req.getParameter("usr");
			String password = req.getParameter("pas");
			PrintWriter out = resp.getWriter();
			//Remove first condition after debug
			//TODO
			if( username.equals("a")||
				username==null || password ==null ||
				username.length()==0||password.length()==0)
			{
				throw new IOException();
			}
			
			CredentialsDAO credentialsDAO = new CredentialsDAO();
			Credentials tempCreds = new Credentials();
			tempCreds.setUsername(username);
			tempCreds.setPassword(password);
			
			if(!credentialsDAO.testCredentials(tempCreds))
				throw new IOException();
			
			
			req.setAttribute("username", tempCreds.getUsername());
			RequestDispatcher rd = req.getRequestDispatcher("userSetData.jsp");
			rd.forward(req, resp);
			
		}
		catch (Exception e)
		{
			req.setAttribute("fail", true);
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
			return;
		}
	}
}
