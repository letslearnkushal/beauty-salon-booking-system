package com.beauty.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.beauty.config.bdconfig;
import com.beauty.model.AppointmentModel;

public class BookAppointmentService {

    public boolean isSlotTaken(String date, String time) {
        boolean taken = false;
        try (Connection conn = bdconfig.getDbConnection()) {
            String sql = "SELECT COUNT(*) FROM appointment WHERE date = ? AND time = ?";
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

    public void save(AppointmentModel appointment) {
        try (Connection conn = bdconfig.getDbConnection()) {
            String sql = "INSERT INTO appointment (service_name, stylist, date, time) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, appointment.getServices());
            stmt.setString(2, appointment.getStylist());
            stmt.setString(3, appointment.getDate());
            stmt.setString(4, appointment.getTime());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}