package com.ve.veBackend.DAOImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.ve.veBackend.dao.OrderDAO;
import com.ve.veBackend.model.Order;

@Repository("OrderDAO")
@Transactional
@EnableTransactionManagement
public class OrderDAOImpl implements OrderDAO{

	@Autowired
	SessionFactory sessionFactory;
	public void addOrder(Order order) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(order);
		
	}

}
