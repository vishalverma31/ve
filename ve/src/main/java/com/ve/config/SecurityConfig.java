package com.ve.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackages="com.ve")
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
				
		auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery("select name,password,enabled from person where name=?")
		.authoritiesByUsernameQuery("select name,role from person where name=?");
		super.configure(auth);		
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/","/home").permitAll()
		.antMatchers("/AdminPage/**").access("hasRole('ROLE_ADMIN')")
		.and().formLogin().loginPage("/login")
		.and().csrf().disable()
		.exceptionHandling().accessDeniedPage("/access_Denied");
		
	}

}

