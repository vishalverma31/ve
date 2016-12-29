package com.ve.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ve.veBackend.dao.CartDAO;
import com.ve.veBackend.dao.ItemDAO;
import com.ve.veBackend.model.Cart;
import com.ve.veBackend.model.Item;

@RestController
public class CartRestController {
	   
	@Autowired
    ItemDAO itemDAO;
    @Autowired
    CartDAO cartDAO;
    
    @RequestMapping("/refreshCart/{cartId}")
	 public Cart getCartById(@PathVariable("cartId") int cartId){
 	      Cart cart=cartDAO.getCartById(cartId);
          return cart;
   }
	 
    @RequestMapping(value="/removeItem/{itemId}", method=RequestMethod.PUT)
	 public void removeItem(@PathVariable("itemId") int itemId){
 	    Item item=itemDAO.getItemByItemId(itemId);
         itemDAO.removeItem(item);
   }
}
