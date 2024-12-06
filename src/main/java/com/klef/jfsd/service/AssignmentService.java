package com.klef.jfsd.service;

import com.klef.jfsd.model.Assignment;
import java.util.List;

public interface AssignmentService {
    String addAssignment(Assignment assignment);
    List<Assignment> getAssignmentsByCourseId(Integer courseId);
}
