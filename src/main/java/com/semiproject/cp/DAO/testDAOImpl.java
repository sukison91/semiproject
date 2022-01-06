package com.semiproject.cp.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.semiproject.cp.api.testDb;
import com.semiproject.cp.rowmapper.TestRowMapper;

@Repository
public class testDAOImpl implements testDAO{
	
	@Autowired
	JdbcTemplate jdbcTemplate; 
	
	@Override
	public List<testDb> loadDB(){
				
		String sql = "SELECT * FROM test"; 
		List<testDb> dbList = jdbcTemplate.query(sql, new TestRowMapper()); 
		
		return dbList; 
	
	}
}
