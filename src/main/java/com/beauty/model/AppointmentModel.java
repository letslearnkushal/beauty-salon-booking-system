package com.beauty.model;

public class AppointmentModel {
	 private String services;
	    private String stylist;
	    private String date;
	    private String time;

	    public AppointmentModel(String services, String stylist, String date, String time) {
	        this.services = services;
	        this.stylist = stylist;
	        this.date = date;
	        this.time = time;
	    }

	    public String getServices() { return services; }
	    public String getStylist() { return stylist; }
	    public String getDate() { return date; }
	    public String getTime() { return time; }
	}