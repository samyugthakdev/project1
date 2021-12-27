package st;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class Validate
 */
@WebServlet("/Valid")
public class Valid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Valid() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  try
	  {
          boolean flag=false;
		  Class.forName("com.mysql.jdbc.Driver");  
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stpro","root","Samyu@041");  
		  Statement st=con.createStatement();
	      response.setContentType("text/html");
	      PrintWriter out=response.getWriter();
	      String name,pass,dept;
	      name=request.getParameter("uname");
	      pass=request.getParameter("pass");
	      dept=request.getParameter("dept");
	      ResultSet rs=st.executeQuery("select * from doctor_regs");
	      while(rs.next())
	      {
	    	  String user_name = rs.getString("uname");
	          String passwrd = rs.getString("pass"); 
	          String department = rs.getString("spl"); 
	          if((name.equals(user_name)) && (pass.equals(passwrd)) && (dept.equals(department)))
	          {
	              flag = true;
	              Cookie ck= new Cookie ("username",name);
	    	      Cookie vk= new Cookie ("department",dept);
	    	      response.addCookie(ck);
	    	      response.addCookie(vk);
	              ServletContext sc = getServletContext();
	              sc.getRequestDispatcher("/home.jsp").forward(request, response);
	          } 
	          if(!flag)
	          {
	            out.println("Please Check Username and Password ");
	          }
	      }
	      rs.close();
	  }
	  catch(Exception e)
	  {
		PrintWriter out=response.getWriter();
		out.println("<html><body><b>EXCEPTION HAS RAISED"
                + "</b></body></html>"); 
		e.printStackTrace();
	  }
		  
	  }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}