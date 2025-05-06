package com.beauty.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.beauty.model.AppointmentModel;
import com.beauty.service.BookAppointmentService;

/**
 * Servlet implementation class BookAppointment
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/bookappointment" })
public class BookAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getRequestDispatcher("/WEB-INF/pages/booking.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String[] selectedServices = request.getParameterValues("services");

	        boolean showMakeupError = false;
	        boolean showHairError = false;
	        boolean showNailError = false;
	        boolean showCosmoError = false;
	        boolean showSpaError = false;

	        if (selectedServices != null) {
	            List<String> services = Arrays.asList(selectedServices);

	            List<String> lowerServices = new ArrayList<>();
	            for (String service : services) {
	                lowerServices.add(service.toLowerCase());
	            }

	            // Makeup stylist validation
	            if (containsAny(lowerServices, Arrays.asList("make up")) &&
	                request.getParameter("stylist_makeup") == null) {
	                showMakeupError = true;
	            }

	            // Hair stylist validation
	            if (containsAny(lowerServices, Arrays.asList("hair")) &&
	                request.getParameter("stylist_hair") == null) {
	                showHairError = true;
	            }

	            // Nail stylist validation
	            if (containsAny(lowerServices, Arrays.asList("nail", "manicure", "pedicure")) &&
	                request.getParameter("stylist_nail") == null) {
	                showNailError = true;
	            }

	            // Cosmetologist validation
	            if (containsAny(lowerServices, Arrays.asList("botox", "chemical", "laser")) &&
	                request.getParameter("stylist_cosmo") == null) {
	                showCosmoError = true;
	            }

	            // Spa therapist validation
	            if (containsAny(lowerServices, Arrays.asList("scrub", "relax", "slimming", "foot")) &&
	                request.getParameter("stylist_spa") == null) {
	                showSpaError = true;
	            }
	        }

	        // Send error flags to JSP
	        request.setAttribute("showMakeupError", showMakeupError);
	        request.setAttribute("showHairError", showHairError);
	        request.setAttribute("showNailError", showNailError);
	        request.setAttribute("showCosmoError", showCosmoError);
	        request.setAttribute("showSpaError", showSpaError);

	        // Forward to booking page
	        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/booking.jsp");
	        rd.forward(request, response);
	        
	        String[] services = request.getParameterValues("services");
	        String date = request.getParameter("date");
	        String time = request.getParameter("time");

	        // Stylists
	        String stylistMakeup = request.getParameter("stylist_makeup");
	        String stylistHair = request.getParameter("stylist_hair");
	        String stylistNail = request.getParameter("stylist_nail");
	        String stylistCosmo = request.getParameter("stylist_cosmo");
	        String stylistSpa = request.getParameter("stylist_spa");

	        // Combine selected services
	        String selectedServicesdb = String.join(", ", services != null ? services : new String[]{});

	        // Get the selected stylist (first non-null)
	        String stylist = stylistMakeup != null ? stylistMakeup :
	                         stylistHair != null ? stylistHair :
	                         stylistNail != null ? stylistNail :
	                         stylistCosmo != null ? stylistCosmo :
	                         stylistSpa;

	        BookAppointmentService service = new BookAppointmentService();
	        boolean alreadyBooked = service.isSlotTaken(date, time);

	        if (alreadyBooked) {
	            request.setAttribute("error", "Slot already booked.");
	            request.getRequestDispatcher("/WEB-INF/pages/appointment.jsp").forward(request, response);
	            return; // ✅ Imp
	            } 
	            AppointmentModel appointment = new AppointmentModel(selectedServicesdb, stylist, date, time);
	            service.save(appointment);
	            response.sendRedirect("booking.jsp");
	            return; // ✅ Prevent further processing
	        }
	    
	

	// Helper method
	private boolean containsAny(List<String> services, List<String> keywords) {
	    for (String service : services) {
	        String serviceLower = service.toLowerCase();
	        for (String keyword : keywords) {
	            if (serviceLower.contains(keyword)) {
	                return true;
	            }
	        }
	    }
	    return false;
	}
	
	
	
	
	}


