package com.semiproject.cp.config;


import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.semiproject"})
public class ProjectConfig {
	
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("WEB-INF/view/");
		viewResolver.setSuffix(".jsp"); 
		return viewResolver; 
		
	}
	@Bean
	public JdbcTemplate jdbcTemplate() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource()); 
		
		return jdbcTemplate; 
	}
	
	@Bean 
	public DataSource dataSource(){
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		
		dataSource.setUsername("root");
		dataSource.setPassword("joe66");
		dataSource.setUrl("jdbc:mariadb://localhost:3306/test?useSSL=false");
		dataSource.setDriverClassName("org.mariadb.jdbc.Driver");
		return dataSource; 
	}
}
