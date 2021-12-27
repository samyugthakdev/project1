package st;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class Validate
 */
@WebServlet("/Validate")
public class Validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Validate() {
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
	      String name,bg,emailid,dob;
	      name=request.getParameter("uname");
	      int weight=Integer.parseInt(request.getParameter("weight"));
	      int age=Integer.parseInt(request.getParameter("age"));
	      bg=request.getParameter("bg");
	      String phn=request.getParameter("phn");
	      emailid=request.getParameter("email");
	      dob=request.getParameter("dob");
	      if((age<20)||(weight<50))
	      {
	    	  response.sendRedirect("bdfailed.html");  
	      }
	      else
	      {
	    	  int rs=st.executeUpdate("insert into bdonation_reg(uname,age,weight,blood_grp,phn_num,email_id,date_of_donation)values('"+name+"','"+age+"','"+weight+"','"+bg+"','"+phn+"','"+emailid+"','"+dob+"')");
			  out.println("<html><body><b>Successfully Inserted"+ "</b></body></html>"); 
			  con.close();
	      }
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
