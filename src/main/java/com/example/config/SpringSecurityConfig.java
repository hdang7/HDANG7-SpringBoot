package com.example.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.hibernate.criterion.Order;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.service.UserServiceImpl;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.slf4j.Logger;
//import com.example.service.impl.UserDetailServiceImpl;
//import sun.security.util.SecurityProperties;
import org.slf4j.LoggerFactory;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
//@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	UserDetailsService userDetailsService;
	
    // User Details Service Authentication (Password stored in Database)
    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userDetailsService)
                .passwordEncoder(new BCryptPasswordEncoder());
    }

/*	
	// In memory Authentication (Password stored in Memory)
    @Override
    protected void configure (AuthenticationManagerBuilder auth) throws Exception {

        auth.inMemoryAuthentication()
                .withUser("user").password("{noop}password").roles("USER")
                .and()
                .withUser("admin").password("{noop}password").roles("USER", "ADMIN");

    }

    // JDBC Authentication (Password stored in Database)
    @Override
    public void configure (AuthenticationManagerBuilder auth) throws Exception {
    	auth.jdbcAuthentication().dataSource(dataSource)
    		.auth.usersByUsernameQuery("select user_id,password, 'true' as enabled from user where user_id=?")
    		.authoritiesByUsernameQuery("select user_id, role from user where user_id=?")
    		.passwordEncoder(new ShaPasswordEncoder(256));

    }
 

	// LDAP Authentication (Password stored in AD - Active Directory)
	@Override
	public void configure(AuthenticationManagerBuilder auth)
	            throws Exception {
		auth.ldapAuthentication()
		  .userDnPatterns("uid={0},ou=people")
		  .groupSearchBase("ou=roles")
		  .contextSource().url("ldap://localhost:8389/dc=springframework,dc=org").and()
		  .passwordCompare().passwordAttribute("userPassword");
	    }
*/
	
    // Secure the endpoints with HTTP Basic authentication
    @Override
    protected void configure(HttpSecurity http) throws Exception {

    	LOGGER.warn("TES.....");
    	
        http
                //HTTP Basic authentication
                .httpBasic()
                .and()
                .authorizeRequests()
                .antMatchers(HttpMethod.GET, "/books/**").hasAnyAuthority("USER")
                .antMatchers(HttpMethod.POST, "/books").hasAnyAuthority("ADMIN")
                .antMatchers(HttpMethod.PUT, "/books/**").hasAnyAuthority("ADMIN")
                .antMatchers(HttpMethod.PATCH, "/books/**").hasAnyAuthority("ADMIN")
                .antMatchers(HttpMethod.DELETE, "/books/**").hasAnyAuthority("ADMIN")
                .anyRequest().fullyAuthenticated()
                .and()
                .csrf().disable()
                .formLogin().disable();
      

    	/*
        http
        .authorizeRequests()
            .antMatchers("/", "/home", "/public/*").permitAll()
            .antMatchers("/", "/books", "/books/*").hasAuthority("ADMIN")
            .antMatchers("/users/**").hasAuthority("ADMIN")
            .anyRequest().fullyAuthenticated()
            .and()
        .formLogin()
            .loginPage("/login")
            .failureUrl("/login?error")
            .usernameParameter("email")
            .permitAll()
            .and()
        .logout()
        	.logoutUrl("/logout")
            .logoutSuccessUrl("/")
            .permitAll();  */
    }

    /*@Bean
    public UserDetailsService userDetailsService() {
        //ok for demo
        User.UserBuilder users = User.withDefaultPasswordEncoder();

        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
        manager.createUser(users.username("user").password("password").roles("USER").build());
        manager.createUser(users.username("admin").password("password").roles("USER", "ADMIN").build());
        return manager;
    }*/
    
}
