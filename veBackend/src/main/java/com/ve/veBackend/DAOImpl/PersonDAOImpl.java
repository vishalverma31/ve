package com.ve.veBackend.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.ve.veBackend.dao.PersonDAO;
import com.ve.veBackend.model.Cart;
import com.ve.veBackend.model.Person;


@Repository("PersonDAO")
@Transactional
@EnableTransactionManagement
public class PersonDAOImpl implements PersonDAO{
	
	@Autowired
	SessionFactory sessionFactory;

	public void addPerson(Person p) {
		Session session=sessionFactory.getCurrentSession();
		p.setAddress(null);	
        p.setEnabled(true);
	    p.setRole("ROLE_USER");
	    
	    Cart cart=new Cart();
	    cart.setPerson(p);
	    p.setCart(cart);
		
	    session.saveOrUpdate(p);
		
	}

	public void updatePerson(Person p) {
		Session session=sessionFactory.getCurrentSession();
		session.update(p);
		
	}

	public List<Person> listPersons() {
		Session session=sessionFactory.getCurrentSession();
		List<Person> persons=session.createQuery("from Person").getResultList();
		return persons;
	}

	public Person getPersonById(int id) {
		Session session=sessionFactory.getCurrentSession();
		Person person=(Person)session.createQuery("from Person where id="+id).getSingleResult();
		return person;
		
	}

	public void removePerson(int id) {
		Session session=sessionFactory.getCurrentSession();
		Person person=(Person)session.createQuery("from Person where id="+id).getSingleResult();
		session.delete(person);
		
	}

	public Person getPersonByName(String name) {
		Session session=sessionFactory.getCurrentSession();
		Person person=(Person)session.createQuery("from Person where name='"+name+"'").getSingleResult();
		return person;
	}

}
