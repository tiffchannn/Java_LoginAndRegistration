package com.tiffany.authentication.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.tiffany.authentication.models.User;

@Component
public class UserValidator implements Validator {

	@Override
	// Specifies that a instance of the User Domain Model can be validated with this custom validator
	// Supports the User class
	public boolean supports(Class<?> clazz) {
		  return User.class.equals(clazz);
	}

	@Override
	// Creating our custom validation. We can add errors via .rejectValue(String, String)
	public void validate(Object target, Errors errors) {
		User user = (User) target;
        
        if (!user.getPasswordConfirmation().equals(user.getPassword())) {
            // First argument ( passwordConfirmation ) is the member variable of our Domain model that we are validating. 
        	// Second argument ( Match ) is a code for us to use to set an error message.
            errors.rejectValue("passwordConfirmation", "Match");
        }

	}

}
