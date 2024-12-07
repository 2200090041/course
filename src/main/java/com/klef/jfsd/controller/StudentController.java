package com.klef.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.CourseRepository;

import com.klef.jfsd.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private CourseRepository courseRepository;



    // Home Page
    @GetMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    // Student Login Page
    @GetMapping("studentlogin")
    public ModelAndView studentLogin() {
        return new ModelAndView("studentlogin");
    }

    // Validate Student Login
    @PostMapping("checkstudentlogin")
    public ModelAndView checkStudentLogin(HttpServletRequest request) {
        String semail = request.getParameter("semail");
        String spwd = request.getParameter("spwd");

        Student student = studentService.checkstudentlogin(semail, spwd);

        ModelAndView mv = new ModelAndView();
        if (student != null) {
            HttpSession session = request.getSession();
            session.setAttribute("student", student);
            mv.setViewName("studenthome");
        } else {
            mv.setViewName("studentloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    // Student Logout
    @GetMapping("studentlogout")
    public String studentLogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/studentlogin"; // Redirect to login page after logout
    }

    // Student Dashboard
    @GetMapping("studenthome")
    public ModelAndView studentHome() {
        return new ModelAndView("studenthome");
    }

    // Student Profile
    @GetMapping("/studentprofile")
    public ModelAndView studentProfile() {
        return new ModelAndView("studentprofile");
    }

    // Update Student Info
    @GetMapping("/updatestudent")
    public ModelAndView updateStudent() {
        return new ModelAndView("updatestudent");
    }

    @PostMapping("/update")
    public ModelAndView update(HttpServletRequest request) {
        Student student = new Student();
        student.setId(Integer.parseInt(request.getParameter("eid")));
        student.setName(request.getParameter("ename"));
        student.setGender(request.getParameter("egender"));
        student.setDateOfBirth(request.getParameter("edob"));
        student.setDepartment(request.getParameter("edept"));
        student.setLocation(request.getParameter("elocation"));
        student.setPassword(request.getParameter("epwd"));
        student.setContact(request.getParameter("econtact"));

        String msg = studentService.updatestudent(student);

        ModelAndView mv = new ModelAndView("updatesuccess");
        mv.addObject("message", msg);
        return mv;
    }

    // View All Courses
    @GetMapping("/viewcourse")
    public String viewCourses(Model model) {
        model.addAttribute("courseList", courseRepository.findAll());
        return "viewcourse";
    }
    @GetMapping("studentsessionfail")
    public ModelAndView studsessionfail()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("studentsessionfail");
      return mv;
    }
    // Register for a Course
    @PostMapping("/registerCourse")
    public String registerForCourse(@RequestParam("courseId") int courseId, HttpSession session, Model model) {
        Student student = (Student) session.getAttribute("student");

        if (student == null) {
            model.addAttribute("message", "Please log in to register for courses.");
            return "studentlogin";
        }

        String result = studentService.registerForCourse(student.getId(), courseId);
        model.addAttribute("message", result); // Success or failure message

        return "redirect:/viewcourse"; // Redirect to courses page
    }

    @GetMapping("viewregisteredcourse")
    public String viewRegisteredCourses(HttpSession session, Model model) {
        Student student = (Student) session.getAttribute("student");

        if (student == null) {
            return "redirect:/studentsessionfail"; // Redirect to session failure page
        }

        model.addAttribute("registeredCourses", studentService.getRegisteredCourses(student.getId()));
        return "viewregisteredcourse";
    }


    

    // Internship Pages
    @GetMapping("/internships/human-resource-management")
    public String humanResource() {
        return "humanresource";
    }

    @GetMapping("/internships/product-management")
    public String productManagement() {
        return "productmanagement";
    }

    @GetMapping("/internships/supply-chain-logistics")
    public String supplyChain() {
        return "supplychain";
    }

    @GetMapping("/internships/data-science")
    public String dataScience() {
        return "datascience";
    }

    @GetMapping("/internships/digital-marketing")
    public String digitalMarketing() {
        return "interndigitalmarketing";
    }

    @GetMapping("/internships/ui-ux-design")
    public String uiUxDesign() {
        return "uiux";
    }

    // Courses
    @GetMapping("/dspython")
    public String dataStructuresPython() {
        return "dspython";
    }

    @GetMapping("/digitalmarketing")
    public String digitalMarketingCourse() {
        return "digitalmarketing";
    }

    @GetMapping("/fullstack")
    public String fullStackDevelopment() {
        return "fullstack";
    }

    // Dashboard
    @GetMapping("dashboard")
    public String viewDashboard(Model model) {
        model.addAttribute("courseList", courseRepository.findAll());
        return "dashboard";
    }
   
}