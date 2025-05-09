package com.beauty.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.User;

import com.beauty.config.bdconfig;
import com.beauty.model.modeluser;

public class Adminuserservice {
	
	 
    public List<modeluser> getAllUsers() {
        List<modeluser> userList = new ArrayList<>();

        try {
            Connection conn = bdconfig.getDbConnection();
            String sql = "SELECT * FROM user";  // Make sure your table name is correct
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                modeluser user = new modeluser();
                user.setUser_id(rs.getInt("user_id"));
                user.setUsername(rs.getString("username"));
                user.setFirst_name(rs.getString("first_name")); // change as per your column name
                user.setLast_name(rs.getString("last_name"));
                user.setEmail(rs.getString("email"));
                userList.add(user);
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return userList;
    }
}