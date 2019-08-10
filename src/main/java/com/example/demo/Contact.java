package com.example.demo;
  
 
public class Contact {
    private String name;
    private String email;
    private String country;
 
    public Contact() {
        super();
    }
 
    public Contact(String name, String email, String country) {
        super();
        this.name = name;
        this.email = email;
        this.country = country;
    }
 
    public String getName() {
    	return name;
    }
    
    public String getEmail() {
    	return email;
    }
    
    public String getCountry() {
    	return country;
    }
    // getters and setters are excluded for brevity
 
}
