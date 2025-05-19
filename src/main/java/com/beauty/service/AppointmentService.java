package com.beauty.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.beauty.config.bdconfig;
import com.beauty.model.Appointment;

public class AppointmentService {

    public List<Appointment> getAllAppointments() {
        List<Appointment> appointments = new ArrayList<>();

        try (Connection conn = bdconfig.getDbConnection()) {
            String query = "SELECT appointment_id, service_name, Time, booked_date, stylist FROM appointment";
            try (PreparedStatement stmt = conn.prepareStatement(query)) {
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    Appointment appointment = new Appointment();
                    appointment.setAppointmentId(rs.getInt("appointment_id"));
                    appointment.setServiceName(rs.getString("service_name"));
                    appointment.setTime(rs.getString("Time"));  // Use getString for time if it's TIME or VARCHAR
                    appointment.setDate(rs.getString("booked_date"));  // Use getString for DATE too
                    appointment.setStylist(rs.getString("stylist"));
                    appointments.add(appointment);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return appointments;
    }

	public Appointment getAppointmentById(int appointmentId) {
		// TODO Auto-generated method stub
		return null;
	}
}