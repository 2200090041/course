package com.klef.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	public Student checkstudentlogin(String email, String password) {
		return studentRepository.checkstudentlogin(email, password);
	}

	@Override
	public String updatestudent(Student s) {
		Student stu = studentRepository.findById(s.getId()).get();
		stu.setContact(s.getContact());
		stu.setDateofbirth(s.getDateofbirth());
		stu.setDepartment(s.getDepartment());
		stu.setGender(s.getGender());
		stu.setLocation(s.getLocation());
		stu.setName(s.getName());
		stu.setPassword(s.getPassword());
		
		studentRepository.save(stu);
		
		return "Employee Updated Successfully";
	}
            
	
}