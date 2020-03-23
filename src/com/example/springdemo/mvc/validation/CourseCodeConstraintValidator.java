package com.example.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {
	private String coursePrefix;
	
	@Override
	public void initialize(CourseCode courseCode) {
		coursePrefix = courseCode.value();
	}

	@Override
	public boolean isValid(String courseCode, ConstraintValidatorContext arg1) {
		if (courseCode == null) return false;
		return courseCode.startsWith(coursePrefix);
	}

}
