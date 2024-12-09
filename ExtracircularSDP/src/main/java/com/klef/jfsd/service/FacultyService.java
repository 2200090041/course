package com.klef.jfsd.service;

import com.klef.jfsd.model.Faculty;

public interface FacultyService {
    public Faculty checkfacultylogin(String email, String password);
    
    public String updateFaculty(Faculty faculty);
}
