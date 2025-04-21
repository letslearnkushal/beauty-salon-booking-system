package com.beauty.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.beauty.model.modeluser;
import com.beauty.service.loginService;
import com.beauty.util.CookieUtil;
import com.beauty.util.SessionUtil;

/**
 * Servlet implementation class login
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = request.getParameter("username");
		    String password = request.getParameter("password");
		    
		    
		 

			modeluser modeluser = new modeluser(username, password);
			Boolean loginStatus = loginUser(modeluser);

			if (loginStatus != null && loginStatus) {
				SessionUtil.setAttribute(request, "username", username);
				if (username.equals("admin")) {
					CookieUtil.addCookie(response, "role_id", "admin", 5 * 30);
					response.sendRedirect(request.getContextPath() + "/dashboard"); // Redirect to /home
				} else {
					CookieUtil.addCookie(response, "role_id", "user", 5 * 30);
					response.sendRedirect(request.getContextPath() + "/home1"); // Redirect to /home
				}
			} 
		    loginService loginService = new loginService();
		    Boolean isAdmin = loginService.loginUser(username, password);

		    if (isAdmin == null) {
		        request.setAttribute("errorMsg", "Login failed. Please try again.");
		        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
		        System.out.println("errrorrr");
		    } else if (isAdmin) {
		    	 System.out.println("admin page ");
		    	 request.getRequestDispatcher("/WEB-INF/pages/admindashboard.jsp").forward(request, response);
		    } else {
		    	 System.out.println("user page");
		    	 request.getRequestDispatcher("/WEB-INF/pages/home1.jsp").forward(request, response);
		    }
	}

	private Boolean loginUser(modeluser modeluser) {
		// TODO Auto-generated method stub
		return null;
	}
	
}

