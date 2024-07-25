package com.ex.lms;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

//	 configure dispatcherServlet is done here and
//	
	
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {AppConfig.class}; // return class type
	}

	@Override
	protected String[] getServletMappings() {
		
		return new String[] {"/"};//accept this mapping or accept the request 
	}

}
