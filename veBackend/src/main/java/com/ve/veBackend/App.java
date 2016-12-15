package com.ve.veBackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.ve.veBackend.config.AppContext;
import com.ve.veBackend.dao.productDAO;
import com.ve.veBackend.model.Product;


public class App 
{
    public static void main( String[] args )
    {
       AbstractApplicationContext context=new AnnotationConfigApplicationContext(AppContext.class);
       
       
       
       
    }
}