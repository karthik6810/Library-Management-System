package com.ex.lms;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = {"com.ex.lms"})
@EnableWebMvc
public class AppConfig implements WebMvcConfigurer {
// WebMvcConfigurer
	//provide beans config
	//configure other part of the Configuration
	//
	
//	Configure the view Resolver 
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		InternalResourceViewResolver resolver =  new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/Views/");
		resolver.setSuffix(".jsp");
		
		registry.viewResolver(resolver);
	}
	
	
	@Bean
	EntityManagerFactory getFactory() {
		return Persistence.createEntityManagerFactory("mysql_config");
	}
}
