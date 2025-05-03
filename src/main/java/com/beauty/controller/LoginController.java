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
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Validate input parameters
        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            request.setAttribute("errorMsg", "Username and password are required.");
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
            return;
        }
        
        System.out.println("Login attempt for username: " + username);
        
        // Call service to validate login
        loginService loginService = new loginService();
        Boolean isAdmin = loginService.loginUser(username, password); // This will handle decryption and return role-based boolean
        
        // Check if login was successful - isAdmin will be true or false for successful login, null for system error
        if (isAdmin == null) {
            // Connection or system error
            handleLoginFailure(request, response, false);
            System.out.println("Login failed due to system error (null return)");
            return;
        }
        
        if (isAdmin == false) {
            // This could be either a regular user OR a failed login attempt
            // We need to verify which one by checking if the login was successful
            modeluser user = loginService.getUser(username);
            
            if (user != null) {
            	
                // Additional verification step: check if this user was actually authenticated
                // by verifying passwords directly
                boolean isLoginSuccessful = loginService.isValidUser(username, password);
                SessionUtil.setAttribute(request, "user", user);
                if (!isLoginSuccessful) {
                    System.out.println("User found but password validation failed");
                    handleLoginFailure(request, response, false);
                    return;
                }
                
                // Now we know this is a valid regular user
                // Save session
               
                CookieUtil.addCookie(response, "role_id", "user", 5 * 30);
                System.out.println("Redirecting to user page for validated user");
                response.sendRedirect(request.getContextPath() + "/home"); 
                HttpSession session = request.getSession();
                session.setAttribute("username", username); // Set this after successful login
                //request.getRequestDispatcher("/WEB-INF/pages/userhome.jsp").forward(request, response);
            } else {
                // User not found or password incorrect
                System.out.println("User not found or login credentials invalid");
                handleLoginFailure(request, response, false);
            }
        }
        
        else if (isAdmin == true) {
            // Admin user - proceed to admin dashboard
            modeluser user = loginService.getUser(username);
            if (user != null) {
                SessionUtil.setAttribute(request, "user", user);
                CookieUtil.addCookie(response, "role_id", "admin", 5 * 30);
                System.out.println("Redirecting to admin page");
                response.sendRedirect(request.getContextPath() + "/adminDashboard"); 
                //request.getRequestDispatcher("/WEB-INF/pages/admindashboard.jsp").forward(request, response);
            } else {
                System.out.println("Admin user authentication succeeded but user retrieval failed");
                handleLoginFailure(request, response, false);
            }
        }
        
      
    }
    
    private void handleLoginFailure(HttpServletRequest request, HttpServletResponse response, Boolean loginStatus)
            throws ServletException, IOException {
        String errorMessage;
        if (loginStatus == null) {
            errorMessage = "Our server is under maintenance. Please try again later!";
        } else {
            errorMessage = "Username or password incorrect. Please try again!";
        }
        request.setAttribute("errorMsg", errorMessage);
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }
}