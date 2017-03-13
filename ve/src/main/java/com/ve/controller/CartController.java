package com.ve.controller;


import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ve.veBackend.dao.CartDAO;
import com.ve.veBackend.dao.ItemDAO;
import com.ve.veBackend.dao.PersonDAO;
import com.ve.veBackend.dao.UserOrderDAO;
import com.ve.veBackend.dao.productDAO;
import com.ve.veBackend.model.Cart;
import com.ve.veBackend.model.Item;
import com.ve.veBackend.model.Person;
import com.ve.veBackend.model.Product;
import com.ve.veBackend.model.UserOrder;

@Controller
public class CartController {
        
	@Autowired
	PersonDAO personDAO;
    @Autowired
	productDAO pDAO;
    @Autowired
    ItemDAO itemDAO;
    @Autowired
    CartDAO cartDAO;
    @Autowired
    UserOrderDAO userOrderDAO;
    
    @RequestMapping("/AddToCart/{productId}")
    public String cart(@PathVariable("productId") int productId, Principal principal){
        ModelAndView model=new ModelAndView("CartPage");
        System.out.println(principal.getName());
        Person person=personDAO.getPersonByName(principal.getName());
        model.addObject("person",person);
        Cart cart=person.getCart();
        Product product=pDAO.getProductById(productId);
        List<Item> items=cart.getItems();
        
        for(int i=0;i<items.size();i++){
           if(product.getProductId()==items.get(i).getProduct().getProductId())
           {
        	   Item item=items.get(i);
        	   item.setQuantity(item.getQuantity()+1);
        	   item.setItemTotal(product.getPrice()*item.getQuantity());
        	   System.out.println("items"+i);
        	   itemDAO.addItem(item);
        	   
        	   return "redirect:/Cart";
           }
        
        }
        
        Item item=new Item();
        item.setProduct(product);
        item.setQuantity(1);
        item.setItemTotal(product.getPrice()*item.getQuantity());
        item.setCart(cart);
        System.out.println("first item");
        try{
        itemDAO.addItem(item);
        }catch(Exception e)
        {
        	System.out.print(e);
        }
    	return "redirect:/Cart";	
    }
            
     @RequestMapping("/Cart")
     public ModelAndView cart(Principal principal){
         ModelAndView model=new ModelAndView("CartPage");
         System.out.println(principal.getName());
         Person person=personDAO.getPersonByName(principal.getName());
         model.addObject("person", person);
         Cart cart=person.getCart();
         cart.getItems();
         model.addObject("cart", cart);
         cart.getItems();
         
         return model;	
     }
     
     @RequestMapping("/order/{cartId}")
     public String createOrder(@PathVariable("cartId") int cartId){
		 UserOrder userOrder=new UserOrder();
		 Cart cart=cartDAO.getCartById(cartId);
		 userOrder.setCart(cart);
		 Person person=cart.getPerson();
		 userOrder.setPerson(person);
		 
		 userOrderDAO.addOrder(userOrder);
    	     	 
    	 return "redirect:/checkout?orderId="+userOrder.getOrderId();
     
     }
     
     
}