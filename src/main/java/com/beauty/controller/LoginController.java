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
	 */protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String username = request.getParameter("username");
		    String password = request.getParameter("password");

		    // Call service to validate login
		    loginService loginService = new loginService();
		    Boolean isAdmin = loginService.loginUser(username, password); // This will handle decryption and return role-based boolean
		    modeluser user=loginService.getUser(username);
		    
		    if (user!=null) {
		    	if (isAdmin == null) {
			        // Connection or system error
			        request.setAttribute("errorMsg", "Login failed. Please try again.");
			        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
			        System.out.println("Login failed due to null (probably DB error)");
			    } else {
			        // Save session
			        SessionUtil.setAttribute(request, "user", user);

			        // Set cookie based on role
			        if (isAdmin) {
			            CookieUtil.addCookie(response, "role_id", "admin", 5 * 30);
			            System.out.println("Redirecting to admin page");
			            request.getRequestDispatcher("/WEB-INF/pages/admindashboard.jsp").forward(request, response);
			        } else {
			            CookieUtil.addCookie(response, "role_id", "user", 5 * 30);
			            System.out.println("Redirecting to user page");
			            request.getRequestDispatcher("/WEB-INF/pages/userhome.jsp").forward(request, response);
			        }
			    }
		    } 
		    else {
		    	System.out.println("User not found");
		    }
		}

	private Boolean loginUser(modeluser modeluser) {
		// TODO Auto-generated method stub
		return null;
	}
	private void handleLoginFailure(HttpServletRequest req, HttpServletResponse resp, Boolean loginStatus)
			throws ServletException, IOException {
		String errorMessage;
		if (loginStatus == null) {
			errorMessage = "Our server is under maintenance. Please try again later!";
		} else {
			errorMessage = "User credential mismatch. Please try again!";
		}
		req.setAttribute("error", errorMessage);
		req.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(req, resp);
	}
	
}

