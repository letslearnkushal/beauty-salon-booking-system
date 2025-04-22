package com.beauty.service;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beauty.config.bdconfig;
import com.beauty.model.modeluser;

public class UpdateService {

	private Connection dbConn;
	private boolean isConnectionError = false;

	/**
	 * Constructor initializes the database connection. Sets the connection error
	 * flag if the connection fails.
	 */
	public UpdateService() {
		try {
			dbConn = bdconfig.getDbConnection();
		} catch (SQLException | ClassNotFoundException ex) {
			// Log and handle exceptions related to database connection
			ex.printStackTrace();
			isConnectionError = true;
		}
	}

	/**
	 * Updates student information in the database.
	 * 
	 * @param user The StudentModel object containing the updated student data.
	 * @return Boolean indicating the success of the update operation. Returns null
	 *         if there is a connection error or an exception occurs.
	 */
	public Boolean updateUserInfo(modeluser user) {
		  if (isConnectionError) {
		        return null;
		    }

		    String updateSQL = "UPDATE user SET first_name = ?, last_name = ?, "
		            + "email = ?, number = ? WHERE user_id = ?";

		    try (PreparedStatement preparedStatement = dbConn.prepareStatement(updateSQL)) {
		        preparedStatement.setString(1, user.getFirst_name());
		        preparedStatement.setString(2, user.getLast_name());
		        preparedStatement.setString(3, user.getEmail());
		        preparedStatement.setString(4, user.getPhone());
		        preparedStatement.setInt(5, user.getUser_id());

		        int rowsAffected = preparedStatement.executeUpdate();
		        return rowsAffected > 0;
		    } catch (SQLException e) {
		        e.printStackTrace();
		        return null;
		    }
	}

	private int getUser_id(String first_name) {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * Retrieves the program ID for a given program name.
	 * 
	 * @param programName The name of the program.
	 * @return The ID of the program. Returns 0 if the program is not found or an
	 *         exception occurs.
	 */
	private int getRole_id(int role_id, String role_Name) {
		String selectSQL = "SELECT role_id FROM role WHERE role_name = ?";

		try (PreparedStatement preparedStatement = dbConn.prepareStatement(selectSQL)) {
			preparedStatement.setString(1, role_Name);
			ResultSet result = preparedStatement.executeQuery();

			if (result.next()) {
				return result.getInt("role_id");
			}
		} catch (SQLException e) {
			// Log and handle SQL exceptions
			e.printStackTrace();
		}

		return 0;
	}
}