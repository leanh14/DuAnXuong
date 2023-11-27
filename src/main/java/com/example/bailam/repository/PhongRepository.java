package com.example.bailam.repository;


import com.example.bailam.model.Phong;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface PhongRepository extends JpaRepository<Phong, UUID> {
}
