package com.semiproject.cp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.semiproject.cp.DAO.testDAO;
import com.semiproject.cp.api.testDb;


@Controller

public class TestController {
	@Autowired
	private testDAO testDAO; 
	//@RequestMapping(value ="/showdb", method = RequestMethod.GET)
	@GetMapping("/showdb") // 위와 동일함  
	public String showDbList (Model model) {
		
		List<testDb> dbList = testDAO.loadDB(); 
		
		for(testDb temp : dbList) {
			System.out.println(temp);
		}
		
		model.addAttribute("dbList", dbList); 
		
		return "db-list";
		
	}

}
