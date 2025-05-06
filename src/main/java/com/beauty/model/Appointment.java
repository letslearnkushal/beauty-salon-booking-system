package com.beauty.model;

public class Appointment {
    private int appointmentId;
    private String serviceName;
    private String time;
    private String date;
    private String stylist;

    // Getters and Setters
    public int getAppointmentId() {
        return appointmentId;
    }

    public void setAppointmentId(int appointmentId) {
        this.appointmentId = appointmentId;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStylist() {
        return stylist;
    }

    public void setStylist(String stylist) {
        this.stylist = stylist;
    }
    @Override
    public String toString() {
        return "Appointment [id=" + appointmentId + ", service=" + serviceName + ", date=" + date + "]";
    }
}
