package com.klef.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.service.AdminService;
import com.klef.jfsd.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController 
{
	@Autowired
	public StudentService studentService;
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@PostMapping("checkstudentlogin")
	public ModelAndView checkstudentlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    
	    String semail = request.getParameter("semail");
	    String spwd = request.getParameter("spwd");
	    
	    // Verify login credentials
	    Student student = studentService.checkstudentlogin(semail, spwd);
	    
	    if(student != null) {
	        // Set the student object in the session upon successful login
	        HttpSession session = request.getSession();
	        session.setAttribute("student", student);
	        
	        mv.setViewName("studenthome");
	    } else {
	        mv.setViewName("studentloginfail");
	        mv.addObject("message", "Login Failed");
	    }
	    
	    return mv;
	}

	
	@GetMapping("studenthome")
	public ModelAndView studenthome() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studenthome");
		return mv;
	}
	
	@GetMapping("studentlogout")
	public ModelAndView emplogout(HttpServletRequest request) 
	{
		HttpSession session = request.getSession();
		
		session.removeAttribute("student");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@GetMapping("about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	
	@GetMapping("studentsessionfail")
	public ModelAndView studentsessionfail() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentsessionfail");
		return mv;
	}
	
	@GetMapping("studentprofile")
	public ModelAndView studentprofile() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentprofile");
		return mv;
	}
	
	@GetMapping("updatestudent")
	public ModelAndView updatestudent() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatestudent");
		return mv;
	}
	
	@GetMapping("viewevents")
	public ModelAndView viewevents() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewevents");
		return mv;
	}
	
	@PostMapping("update")
    public ModelAndView update(HttpServletRequest request)
    {
       int id =Integer.parseInt(request.getParameter("eid"));
       String name = request.getParameter("ename");
     String gender = request.getParameter("egender");
     String dob = request.getParameter("edob");
     String dept = request.getParameter("edept");
     String location = request.getParameter("elocation");
     String password = request.getParameter("epwd");
     String contact = request.getParameter("econtact");


       Student s = new Student();
       s.setId(id);
       s.setName(name);
       s.setGender(gender);
       s.setDepartment(dept);
       s.setDateofbirth(dob);
       s.setLocation(location);
       s.setPassword(password);
       s.setContact(contact);
       
       String msg = studentService.updatestudent(s);
       
       ModelAndView mv = new ModelAndView("updatesuccess");
       mv.addObject("message", msg);
     
       return mv;

    }
}