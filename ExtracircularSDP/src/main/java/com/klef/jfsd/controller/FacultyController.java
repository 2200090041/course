package com.klef.jfsd.controller;
import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Faculty;
import com.klef.jfsd.service.FacultyService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    @GetMapping("/facultylogin")
    public ModelAndView facultylogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultylogin");
        return mv;
    }

    @PostMapping("/checkfacultylogin")
    public ModelAndView checkfacultylogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String femail = request.getParameter("femail");
        String fpwd = request.getParameter("fpwd");

        // Verify login credentials
        Faculty faculty = facultyService.checkfacultylogin(femail, fpwd);

        if (faculty != null) {
            // Set the faculty object in the session upon successful login
            HttpSession session = request.getSession();
            session.setAttribute("faculty", faculty);

            mv.setViewName("facultyhome");
        } else {
            mv.setViewName("facultyloginfail");
            mv.addObject("message", "Login Failed");
        }

        return mv;
    }

    @GetMapping("/facultyhome")
    public ModelAndView facultyhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultyhome");
        return mv;
    }

    @GetMapping("/facultylogout")
    public ModelAndView facultylogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("faculty");

        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultylogin");
        return mv;
    }

    @GetMapping("/facultysessionfail")
    public ModelAndView facultysessionfail() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultysessionfail");
        return mv;
    }

    @GetMapping("/facultyprofile")
    public ModelAndView facultyprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultyprofile");
        return mv;
    }

    @GetMapping("/updatefaculty")
    public ModelAndView updatefaculty() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatefaculty");
        return mv;
    }

    @PostMapping("/updatefacultyinfo")
    public ModelAndView updatefacultyinfo(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("fid"));
        String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String dob = request.getParameter("fdob");
        String dept = request.getParameter("fdept");
        String location = request.getParameter("flocation");
        String password = request.getParameter("fpwd");
        String contact = request.getParameter("fcontact");
        String qualification = request.getParameter("fqualification");

        Faculty faculty = new Faculty();
        faculty.setId(id);
        faculty.setName(name);
        faculty.setGender(gender);
        faculty.setDateOfBirth(dob);
        faculty.setDepartment(dept);
        faculty.setLocation(location);
        faculty.setPassword(password);
        faculty.setContact(contact);
        faculty.setQualification(qualification);

        String msg = facultyService.updateFaculty(faculty);

        ModelAndView mv = new ModelAndView("updatesuccess");
        mv.addObject("message", msg);

        return mv;
    }
}
