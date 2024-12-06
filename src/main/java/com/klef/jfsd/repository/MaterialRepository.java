package com.klef.jfsd.repository;

import com.klef.jfsd.model.Materials;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MaterialRepository extends JpaRepository<Materials, Long> {
}
