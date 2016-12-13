package com.ve.config;

import javax.servlet.ServletContext;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;
import org.springframework.web.filter.DelegatingFilterProxy;

public class SecurityWebAppInitializer extends AbstractSecurityWebApplicationInitializer {
	@Override
	protected void beforeSpringSecurityFilterChain(ServletContext servletContext) {
		servletContext.addFilter("securityFilter", new DelegatingFilterProxy("springSecurityFilterChain"))
        .addMappingForUrlPatterns(null, false, "/*");
	}
	
}