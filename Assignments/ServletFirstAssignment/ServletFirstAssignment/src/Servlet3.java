

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet3
 */
public class Servlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		ServletContext context = getServletContext();
		ServletConfig config = getServletConfig();
		
		int a = Integer.parseInt(context.getInitParameter("a"));
		int b = Integer.parseInt(context.getInitParameter("b"));
		int c = Integer.parseInt(context.getInitParameter("c"));
		int d = Integer.parseInt(config.getInitParameter("d"));
		int sum = a+b+d;
		pw.print("The sum of a+b+d : "+sum);
		
		List<Integer> aList = new ArrayList<Integer>();
		
		aList.add(a);
		aList.add(b);
		aList.add(c);
		aList.add(d);
		
		Collections.sort(aList,Collections.reverseOrder());
	    pw.print("<br>The lergest number is : "+ aList.get(0));
	    pw.print("<br>");
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
