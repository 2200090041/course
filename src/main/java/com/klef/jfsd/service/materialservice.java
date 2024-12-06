package com.klef.jfsd.service;

import com.klef.jfsd.model.Materials;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface materialservice {
    // Add the method to get all materials
    List<Materials> getAllMaterials();
    
    // Method to upload a material (only declare the method in the interface)
    String uploadMaterial(MultipartFile file);
    String downloadMaterial(Long materialId);
}
