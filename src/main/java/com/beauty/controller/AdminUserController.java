package com.beauty.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import org.apache.catalina.User;

import com.beauty.model.modeluser;
import com.beauty.service.Adminuserservice;

/**
 * Servlet implementation class AdminUserController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/adminuser" })
public class AdminUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private Adminuserservice adminuserservice;

    @Override
    public void init() throws ServletException {
    	adminuserservice = new Adminuserservice(); // Initialize your service or DAO
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   try {
	            List<modeluser> userList = adminuserservice.getAllUsers();
	            request.setAttribute("userList", userList);
	            request.getRequestDispatcher("/WEB-INF/pages/adimUser.jsp").forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to load users.");
	        }
	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
