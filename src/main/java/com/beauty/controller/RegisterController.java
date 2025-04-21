package com.beauty.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


import com.beauty.model.modeluser;

/**
 * Servlet implementation class Register
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/pages/userregistration.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get parameters
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String number = request.getParameter("phone");
		String password = request.getParameter("password");
		String retypePassword = request.getParameter("re-Password");
		String role_id = request.getParameter("role_id");
		System.out.println("username: " + username);
		System.out.println("email: " + email);
		System.out.println("password: " + password);
		System.out.println("retypePassword: " + retypePassword);
		String errorMsg = "";

		if (username == null || username.isEmpty()) {
		    errorMsg = "Username is required.";
		} else if (email == null || email.isEmpty()) {
		    errorMsg = "Email is required.";
		} else if (!email.contains("@") || !email.contains(".")) {
		    errorMsg = "Invalid email format.";
		} else if (password == null || password.isEmpty()) {
		    errorMsg = "Password is required.";
		} else if (password.length() < 6) {
		    errorMsg = "Password must be at least 6 characters.";
		} else if (retypePassword == null || !password.equals(retypePassword)) {
		    errorMsg = "Passwords do not match.";
		}


        // If validation fails
        if (!errorMsg.isEmpty()) {
            request.setAttribute("errorMsg", errorMsg);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/userregistration.jsp");

            System.out.println("Registration failed");
            rd.forward(request, response);
        } else {
           modeluser modeluser = new modeluser();
           modeluser.setFirst_name(firstName);
           modeluser.setLast_name(lastName);
           modeluser.setUsername(username);
           modeluser.setGender(gender);
           modeluser.setEmail(email);
           modeluser.setPhone(number);
           modeluser.setPassword(password);
           modeluser.setRole_name(role_id);
           com.beauty.service.registerservice registerService = new com.beauty.service.registerservice();
           Boolean  isRegistred = registerService.addUser(modeluser);
           if(isRegistred != null && isRegistred) {
        	   System.out.println("Successefully  registered");
        	   request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
           }
           else {
        	   System.out.println("UNSuccessefully  registered");
        	   request.setAttribute("errorMessage", "Something went wrong");
        	   request.getRequestDispatcher("/WEB-INF/pages/userregistration.jsp").forward(request, response);
           }
           
           
    }

	}
}
	


