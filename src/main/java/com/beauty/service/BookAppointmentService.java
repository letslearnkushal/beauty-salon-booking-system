package com.beauty.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

import com.beauty.config.bdconfig;
import com.beauty.model.AppointmentModel;

public class BookAppointmentService {

    public boolean isSlotTaken(String date, String time) {
        boolean taken = false;
        try (Connection conn = bdconfig.getDbConnection()) {
            String sql = "SELECT COUNT(*) FROM appointment WHERE appointment_date = ? AND Time = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, date);
            stmt.setString(2, time);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                taken = rs.getInt(1) > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return taken;
    }

    public boolean save(AppointmentModel appointment) {
    	   boolean success = false;
    	   LocalDate currentDate = LocalDate.now();
    	    try (Connection conn = bdconfig.getDbConnection()) {
    	        String query = "INSERT INTO appointment (user_id, service_name, stylist, appointment_date, Time, booked_date, total_fee) VALUES (?, ?, ?, ?, ?, ?, ?)";
    	        try (PreparedStatement stmt = conn.prepareStatement(query)) {
    	            stmt.setInt(1, appointment.getUserId());
    	            stmt.setString(2, appointment.getServices());
    	            stmt.setString(3, appointment.getStylist());
    	            stmt.setString(4, appointment.getDate());
    	            stmt.setString(5, appointment.getTime());
					stmt.setDate(6, java.sql.Date.valueOf(currentDate));
					stmt.setDouble(7, appointment.getPrice());
    	            int rowsInserted = stmt.executeUpdate();
    	            success = rowsInserted > 0;
    	        }
    	    } catch (Exception e) {
    	        e.printStackTrace(); // Make sure you SEE the exception if it occurs
    	    }
    	    return success;
}
}