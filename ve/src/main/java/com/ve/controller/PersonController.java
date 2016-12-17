package com.ve.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ve.veBackend.dao.PersonDAO;
import com.ve.veBackend.model.Person;

@Controller
public class PersonController {
	@Autowired
	PersonDAO personDAO;
	
    @RequestMapping("/AdminPage")
    public ModelAndView AdminPage()
	{
		List<Person> listPersons=personDAO.listPersons();
		ModelAndView model=new ModelAndView("AdminPage");
		model.addObject("person",new Person());
		model.addObject("listPersons", listPersons);
		
		
		return model;
	}
    
     @RequestMapping("/register")
	 public String register(@Valid @ModelAttribute("person") Person person,BindingResult result,HttpServletRequest request)
    {
        if(result.hasErrors()){
        	return "Register";
        }  	 
        else{
        	personDAO.addPerson(person);
			return "redirect:/login";
    	
        }
        
    }
    
    
	@RequestMapping(value= "/person/add", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("person") Person person,HttpServletRequest request)
	{
					
		
			if (person.getId() == 0) {
				personDAO.addPerson(person);
			} else {
				personDAO.updatePerson(person);
			}

			return "redirect:/AdminPage";
		
	}
	
	
	@RequestMapping("/remove/{id}")
	public String removePerson(@PathVariable("id") int id)
	{
		personDAO.removePerson(id);
		return "redirect:/AdminPage";
	}
	
	@RequestMapping("/edit/{id}")
	public String editPerson(@PathVariable("id") int id, Model model)
	{
		model.addAttribute("person", personDAO.getPersonById(id));
        model.addAttribute("listPersons", personDAO.listPersons());
        return "AdminPage";
	}
}
