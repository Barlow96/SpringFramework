package com.barlow.spring.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import com.barlow.spring.domain.ContactRepository;
import com.barlow.spring.domain.Contact;

@Service
@Transactional
public class ContactService {

    private final ContactRepository contactRepository;

    public ContactService(ContactRepository contactRepository) {
        this.contactRepository = contactRepository;
    }

    public List<Contact> findAll() {

        List<Contact> contacts = new ArrayList<Contact>();
        for(Contact contact : contactRepository.findAll()){
            contacts.add(contact);
        }
        return contacts;

    }

    public Contact findContact(int id) {
        return contactRepository.findOne(id);
    }

    public void save (Contact contact) {
        contactRepository.save(contact);
    }

    public void delete(int id) {
        contactRepository.delete(id);
    }
}
