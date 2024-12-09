package com.klef.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Faculty;
import com.klef.jfsd.repository.FacultyRepository;

@Service
public class FacultyServiceImpl implements FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;

    @Override
    public Faculty checkfacultylogin(String email, String password) {
        return facultyRepository.checkFacultyLogin(email, password);
    }

    @Override
    public String updateFaculty(Faculty faculty) {
        Faculty existingFaculty = facultyRepository.findById(faculty.getId()).orElse(null);

        if (existingFaculty != null) {
            existingFaculty.setContact(faculty.getContact());
            existingFaculty.setDateOfBirth(faculty.getDateOfBirth());
            existingFaculty.setDepartment(faculty.getDepartment());
            existingFaculty.setGender(faculty.getGender());
            existingFaculty.setLocation(faculty.getLocation());
            existingFaculty.setName(faculty.getName());
            existingFaculty.setPassword(faculty.getPassword());
            existingFaculty.setQualification(faculty.getQualification());

            facultyRepository.save(existingFaculty);
            return "Faculty Updated Successfully";
        } else {
            return "Faculty Not Found";
        }
    }
}
