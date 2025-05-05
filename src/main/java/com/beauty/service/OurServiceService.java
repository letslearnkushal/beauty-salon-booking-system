package com.beauty.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beauty.config.bdconfig;
import com.beauty.model.Modelservice;

public class OurServiceService {

    public List<Modelservice> getAllServices() {  // Changed return type
        List<Modelservice> services = new ArrayList<>();
        
        String query = "SELECT service_id, service_title, service_name, price, duration, category, image_path FROM service";
        
        try (Connection con = bdconfig.getDbConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            
            while (rs.next()) {
            	Modelservice service = new Modelservice(
                    rs.getInt("service_id"),
                    rs.getString("service_title"),
                    rs.getString("service_name"),
                    rs.getDouble("price"),
                    rs.getInt("duration"),
                    rs.getString("category"),
                    rs.getString("image_path")
                );
                services.add(service);
            }
            
        } catch (SQLException | ClassNotFoundException e) {
            System.err.println("Database error in getAllServices(): " + e.getMessage());
            // Consider adding error handling/retry logic here
        } 
        
        return services;
    }

}