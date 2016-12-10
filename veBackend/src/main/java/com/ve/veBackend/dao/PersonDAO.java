package com.ve.veBackend.dao;

import java.util.List;
import com.ve.veBackend.model.Person;


public interface PersonDAO {
	
	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons();
	public Person getPersonById(int id);
	public void removePerson(int id);

}
