package com.chandankumar.ckjapp.service;


import java.util.List;

import com.chandankumar.ckjapp.model.Person;

public interface PersonService {
    
    public void addPerson(Person person);
    public List<Person> listPeople();
    public void removePerson(Integer id);
}
