package st;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brainvalid
 */
@WebServlet("/Brainvalid")
public class Brainvalid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Brainvalid() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		    String num=request.getParameter("phn");
		    String mailid=request.getParameter("emailid");
		    String doornum=request.getParameter("door_num");
		    String street=request.getParameter("street_name");
		    String city=request.getParameter("city");
		    String district=request.getParameter("district");
		    String state=request.getParameter("state");
		    int rs=st.executeUpdate("insert into bone_app(uname,gender,age,phn_num,email_id,date_of_birth,dno,street,city,district,state)values('"+name+"','"+gen+"','"+age+"','"+num+"','"+mailid+"','"+dob+"','"+doornum+"','"+street+"','"+city+"','"+district+"','"+state+"')");
		    ServletContext sc = getServletContext();
        sc.getRequestDispatcher("/app_success.html").forward(request, response);
		    con.close();
		  } 
		  catch (Exception e) 
		  {
			// TODO Auto-generated catch block
			  PrintWriter out=response.getWriter();
			  ServletContext sc = getServletContext();
	          sc.getRequestDispatcher("/app_failed.html").forward(request, response);
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
