package com.beauty.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String rePassword = request.getParameter("re-password");
	    String phoneNumber = request.getParameter("PhoneNumber");

	    // Validation Checks
	    if (username.length() < 5 || username.contains(" ")) {
	        request.setAttribute("errorMessage", "Username must be at least 5 characters long and contain no spaces.");
	        request.getRequestDispatcher("/WEB-INF/Pages/RegistrationForm.jsp").forward(request, response);
	        return;
	    }

	    if (!password.matches("^(?=.*[a-z])(?=.*\\d)[a-z\\d]{6,}$")) {
	        request.setAttribute("errorMessage", "Password must be at least 6 characters long and include at least one letter and one number.");
	        request.getRequestDispatcher("/WEB-INF/Pages/RegistrationForm.jsp").forward(request, response);
	        return;
	    }

	    if (!password.equals(rePassword)) {
	        request.setAttribute("errorMessage", "Passwords do not match.");
	        request.getRequestDispatcher("/WEB-INF/Pages/RegistrationForm.jsp").forward(request, response);
	        return;
	    }

	    if (!phoneNumber.matches("\\d{10}")) {
	        request.setAttribute("errorMessage", "Phone number must be exactly 10 digits.");
	        request.getRequestDispatcher("/WEB-INF/Pages/RegistrationForm.jsp").forward(request, response);
	        return;
	    }

	    // After successful validation, redirect to the login page
	    request.getRequestDispatcher("/WEB-INF/Pages/Login.jsp").forward(request, response);

	}

}
