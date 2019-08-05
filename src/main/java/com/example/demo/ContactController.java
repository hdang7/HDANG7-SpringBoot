package com.example.demo;
 
import java.util.List;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
 
@Controller
public class ContactController {
     
    @RequestMapping("jsp_index_page")
    public String listContact(Model model) {
         
    	ContactBusiness business = new ContactBusiness();
        List<Contact> contactList = business.getContactList();
        
        final Logger logger = LoggerFactory.getLogger(ContactController.class);
        		
        model.addAttribute("contacts", contactList);
        
        logger.info("this is a info message");
        logger.warn("this is a warn message");
        logger.error("this is a error message");
        logger.debug("this is a debug message");

        return "index";
        
    }
}
