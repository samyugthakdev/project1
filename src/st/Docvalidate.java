package st;

import javax.mail.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Docvalidate
 */
@WebServlet("/Docvalidate")
public class Docvalidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Docvalidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		  try 
		  {  
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stpro","root","Samyu@041");  
			Statement st=con.createStatement();
		    response.setContentType("text/html");
		    PrintWriter out=response.getWriter();
		    String name=request.getParameter("name");
		    String dob=request.getParameter("dob");
		    String age=request.getParameter("age");
		    String gen=request.getParameter("gender");
		    String bg=request.getParameter("blood");
		    String num=request.getParameter("phn");
		    String mailid=request.getParameter("emailid");
		    String expr=request.getParameter("exper");
		    String spl=request.getParameter("spl");
		    String passwrd=request.getParameter("pass");
		    String address=request.getParameter("address");
		    int rs=st.executeUpdate("insert into doctor_regs(uname,date_of_birth,age,gender,blood_grp,phn_num,email_id,experience,spl,pass,address)values('"+name+"','"+dob+"','"+age+"','"+gen+"','"+bg+"','"+num+"','"+mailid+"','"+expr+"','"+spl+"','"+passwrd+"','"+address+"')");
		    ServletContext sc = getServletContext();
	        sc.getRequestDispatcher("/login.html").forward(request, response);
		    con.close();
		  } 
		  catch (Exception e) 
		  {
			// TODO Auto-generated catch block
			  PrintWriter out=response.getWriter();
			  out.println("<html><body><b>Sorry try again"
	                    + "</b></body></html>"); 
			System.out.println("exception has rasied");
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
