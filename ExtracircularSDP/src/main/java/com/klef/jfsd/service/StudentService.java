package com.klef.jfsd.service;

import com.klef.jfsd.model.Student;

public interface StudentService {
	public Student checkstudentlogin(String email,String password);
	
	public String updatestudent(Student s);
}