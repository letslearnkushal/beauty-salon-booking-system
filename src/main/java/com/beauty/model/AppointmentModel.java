package com.beauty.model;

public class AppointmentModel {
    private int userId;
    private String services;
    private String stylist;
    private String date;
    private String time;
    private double price;

    public AppointmentModel(int userId, String services, String stylist, String date, String time, double price) {
        this.userId = userId;
        this.services = services;
        this.stylist = stylist;
        this.date = date;
        this.time = time;
        this.price = price;
    }

    public int getUserId() {
        return userId;
    }

    public String getServices() {
        return services;
    }

    public String getStylist() {
        return stylist;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }
    public double getPrice() {
        return price;
    }
}
