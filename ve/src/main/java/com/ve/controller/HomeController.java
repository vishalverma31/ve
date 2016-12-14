package com.ve.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ve.veBackend.model.Person;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home() 
	{
  	   return "index";
	}
	
	     @RequestMapping("/home")
		 public String index(){
		   	 return "index";
		 }
	     
		 @RequestMapping(value="/login",method=RequestMethod.GET)
		 public String login(){
	   	 return "login";
	     }
		 
	     @RequestMapping(value="/register",method=RequestMethod.GET)
		 public String register(){
	   	 return "Register";
	     }
	    
	     @RequestMapping("/AboutUs")
		 public String AboutUs(){
	   	 return "AboutUs";
	     }
	    
	     @RequestMapping("/ContactUs")
		 public String ContactUs(){
	   	 return "ContactUs";
	     }
	     
	     @RequestMapping("/ProductDetails")
		 public String ProductDetails(){
	   	 return "ProductDetails";
	     }
	     
	     @RequestMapping(value="/authfailure",method=RequestMethod.GET)
	 	 public String accessDeniedPage()
	 	 {
	 		return "accessDenied";
	 	 }	    	    
}
