package com.barlow.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import com.barlow.spring.domain.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import com.barlow.spring.service.ContactService;


@Controller
public class ContactController {

    @Autowired
    ContactService contactService;

    @GetMapping("/")
    public String home(HttpServletRequest request){
        request.setAttribute("mode", "MODE_CONTACTS");
        return "redirect:/all-contacts";
    }

    @GetMapping("/all-contacts")
    public String allContacts(HttpServletRequest request){
        request.setAttribute("contacts", contactService.findAll());
        request.setAttribute("mode", "MODE_CONTACTS");
        return "index";
    }

    @GetMapping("/new-contact")
    public String newContact(){
        return "contactForm";
    }

//    @PostMapping("/save-contact")
//    public String saveContact(Contact contact, BindingResult result) {
//            contactService.save(contact);
//            return "redirect:/all-contacts";
//    }

    @RequestMapping(value="/save-contact", method=RequestMethod.POST)
    public String saveContact(@ModelAttribute("contact") @Valid Contact contact, BindingResult result) {
        if(result.hasErrors()) {
            return "contactForm";
        }
        // validation was successful
        contactService.save(contact);
        return "redirect:/all-contacts";

    }

    @GetMapping("/update-contact")
    public String updateContact(@RequestParam int id, HttpServletRequest request){
        request.setAttribute("contact", contactService.findContact(id));
        return "contactForm";
    }

    @GetMapping("/delete-contact")
    public String deleteContact(@RequestParam int id, HttpServletRequest request){
        contactService.delete(id);
        return "redirect:/all-contacts";
    }

}
