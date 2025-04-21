package com.beauty.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beauty.config.bdconfig;
import com.beauty.model.modeluser;

public class loginService {
	 private Connection dbConn;
	    private boolean isConnectionError = false;

	    public loginService() {
	        try {
	            dbConn = bdconfig.getDbConnection();
	        } catch (SQLException | ClassNotFoundException ex) {
	            ex.printStackTrace();
	            isConnectionError = true;
	        }
	    }
	    public Boolean loginUser(modeluser modeluser) {
			if (isConnectionError) {
				System.out.println("Connection Error!");
				return null;
			}

			String query = "SELECT username, password FROM student WHERE username = ?";
			try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
				stmt.setString(1, modeluser.getUsername());
				ResultSet result = stmt.executeQuery();

				
			} catch (SQLException e) {
				e.printStackTrace();
				return null;
			}

			return false;
		}

	    /**
	     * Validates the login credentials
	     * 
	     * @param user input user model
	     * @return true if credentials are valid, false otherwise; null if DB error
	     */
	    public Boolean loginUser(String username, String password) {
	        if (isConnectionError) {
	            System.out.println("Database connection error!");
	            return null;
	        }

	        String query = "SELECT password, role_id FROM user WHERE username = ?";

	        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
	            stmt.setString(1, username);
	            ResultSet rs = stmt.executeQuery();

	            if (rs.next()) {
	                String dbPassword = rs.getString("password");
	                int roleId = rs.getInt("role_id");

	                if (password.equals(dbPassword)) {
	                    return roleId == 2; // true if admin, false if normal user
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return null;
	        }

	        return null;
	    }
	
	    private boolean validatePassword(ResultSet result, String password) throws SQLException {
	        String dbPassword = result.getString("password");
	        // Assuming you're using a PasswordUtil class to handle password decryption
	        return dbPassword.equals(password);  
	    }

	    // Fetch user role based on user ID
	    private boolean getUserRole(int userId) {
	        String roleQuery = "SELECT role_name FROM user_role WHERE user_id = ?";
	        try (PreparedStatement stmt = dbConn.prepareStatement(roleQuery)) {
	            stmt.setInt(1, userId);
	            ResultSet result = stmt.executeQuery();
	            if (result.next()) {
	                String role = result.getString("role_name");
	                return role.equals("admin"); // True if admin, false if regular user
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	        return false; // Default case, if role is not found
	    }
}
