package com.semiproject.cp.rowmapper;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.semiproject.cp.api.testDb;

public class TestRowMapper implements RowMapper<testDb>{
	
	@Override
	public testDb mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		testDb testDb = new testDb(); 
		
		testDb.setUserNum(rs.getInt("userNum")); 
		testDb.setId(rs.getString("id"));
		testDb.setPassword(rs.getString("password"));
		testDb.setLocation(rs.getString("location"));

		
		return testDb;
		
	}
}
