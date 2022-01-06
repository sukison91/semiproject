package com.semiproject.cp.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DBListInitizalizer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] configFiles = {ProjectConfig.class};
		return configFiles;
	}

	@Override
	protected String[] getServletMappings() {
		String[] mappings = {"/"}; 
		return mappings;
	}

}
