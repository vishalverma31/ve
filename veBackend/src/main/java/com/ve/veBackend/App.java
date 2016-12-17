package com.ve.veBackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.ve.veBackend.config.AppContext;
import com.ve.veBackend.dao.PersonDAO;
import com.ve.veBackend.dao.productDAO;
import com.ve.veBackend.model.Person;
import com.ve.veBackend.model.Product;


public class App 
{
    public static void main( String[] args )
    {
       AbstractApplicationContext context=new AnnotationConfigApplicationContext(AppContext.class);
       
      /* Person p=new Person();
       p.setName("Vishal Verma");
       p.setEmail("vishalverma31093@gmail.com");
       p.setNumber("9810323459");
       p.setPassword("pass@1234");
       PersonDAO.addPerson(p);*/
    }
}