package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.klef.jfsd.model.Assignment;
import java.util.List;

public interface AssignmentRepository extends JpaRepository<Assignment, Integer> {

}
