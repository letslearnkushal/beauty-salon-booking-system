package com.beauty.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Servlet implementation class SearchController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/search" })
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String query = request.getParameter("query");

	        // For demonstration, assume we're searching static items
	        List<String> services = Arrays.asList("Hair Cut", "Facial", "Manicure", "Pedicure", "Makeup");
	        List<String> filtered = new ArrayList<>();
	        if (query != null && !query.trim().isEmpty()) {
	            for (String s : services) {
	                if (s.toLowerCase().contains(query.toLowerCase())) {
	                    filtered.add(s);
	                }
	            }
	        }

	        request.setAttribute("results", filtered);
	        request.getRequestDispatcher("/WEB-INF/pages/searchresults.jsp").forward(request, response);
	    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
