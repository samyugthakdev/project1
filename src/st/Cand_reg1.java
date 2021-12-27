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
 * Servlet implementation class Cand_reg1
 */
@WebServlet("/Cand_reg1")
public class Cand_reg1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cand_reg1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Samyu@041");
		Statement st=con.createStatement();
	    response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
	    String c_name=request.getParameter("c_name");
	    String c_num=request.getParameter("phn_num");
	    String c_mailid=request.getParameter("email");
	    String c_dob=request.getParameter("dob");
	    String c_age=request.getParameter("age");
	    String c_gen=request.getParameter("gen");
	    String c_degree=request.getParameter("degree");
	    String c_clg=request.getParameter("clg_name");
	    String c_cgpa  =request.getParameter("cgpa");
	    String c_arrear =request.getParameter("arrear");
	    String c_tech  =request.getParameter("prgm");
	    String c_pro=request.getParameter("pro");
	    String c_add=request.getParameter("address");
	    int rs=st.executeUpdate("insert into cand_intern_reg(cand_name,cand_phn,cand_mail,cand_dob,cand_age,cand_gen,cand_deg,cand_clg,cand_cgpa,cand_arrear,cand_tech,cand_pro,cand_add)values('"+c_name+"','"+c_num+"','"+c_mailid+"','"+c_dob+"','"+c_age+"','"+c_gen+"','"+c_degree+"','"+c_clg+"','"+c_cgpa+"','"+c_arrear+"','"+c_tech+"','"+c_pro+"','"+c_add+"')");
	    ServletContext sc = getServletContext();
        sc.getRequestDispatcher("/cand_sucess.html").forward(request, response);
	    con.close();
	  } 
	  catch (Exception e) 
	  {
		// TODO Auto-generated catch block
		  PrintWriter out=response.getWriter();
		  ServletContext sc = getServletContext();
          sc.getRequestDispatcher("/cand_fail.html").forward(request, response);
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
