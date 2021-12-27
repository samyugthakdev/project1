
package st;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExServelet
 */
@WebServlet("/ExServelet")
public class ExServelet extends HttpServlet {
private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
*/
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");  
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stpro","root","Samyu@041");  
Statement st= con.createStatement();
response.setContentType("text/html");
  PrintWriter out=response.getWriter();
  String name=request.getParameter("sname");
  String gen=request.getParameter("gender");
  out.print(name);
  int rs=st.executeUpdate("insert into student(uname,gender)values('"+name+"','"+gen+"')");
  con.close();
  out.print("Success");
}
catch (Exception e)
{
// TODO Auto-generated catch block
PrintWriter out=response.getWriter();
}   }

/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
doGet(request, response);
}

}