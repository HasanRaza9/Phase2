package com.java.advance.program;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Servlet Filter implementation class ValidFilter
 */
public class ValidFilter implements Filter {

    /**
     * Default constructor. 
     */
    public ValidFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		
		String userName = request.getParameter("userName");
		String age = request.getParameter("age");
		
		if(userName.isBlank()||userName.isEmpty()) {
		response.getWriter().write("Name should not be blank<br>");	
		}
		
		if(age.isBlank()||age.isEmpty()) {
			response.getWriter().write("Age should not be blank<br>");	
			}else {
			
				chain.doFilter(request, response);
			}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
