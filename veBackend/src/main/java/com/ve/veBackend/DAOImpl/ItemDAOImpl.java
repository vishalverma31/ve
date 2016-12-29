package com.ve.veBackend.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.ve.veBackend.dao.ItemDAO;
import com.ve.veBackend.model.Cart;
import com.ve.veBackend.model.Item;

@Repository("ItemDAO")
@Transactional
@EnableTransactionManagement
public class ItemDAOImpl implements ItemDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public void addItem(Item item) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(item);
		
	}

	public void removeItem(Item item) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(item);
		
	}

	public void removeAllItems(Cart cart) {
		List<Item> items=cart.getItems();
		for(Item item:items)
		{
			removeItem(item);
		}
		
	}

	public Item getItemByItemId(int itemId) {
		Session session=sessionFactory.getCurrentSession();
		Item item=(Item)session.createQuery("from Item where itemId="+itemId).getSingleResult();
		return item;
	}

	public List<Item> getAllItemsByCart(int cartId) {
		Session session=sessionFactory.getCurrentSession();
		List<Item> items=session.createQuery("from Item where cartId="+cartId).getResultList();
		return items;
	}

}
