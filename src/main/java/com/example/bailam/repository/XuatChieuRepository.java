package com.example.bailam.repository;

import com.example.bailam.model.Phim;
import com.example.bailam.model.Phong;
import com.example.bailam.model.XuatChieu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.UUID;

public interface XuatChieuRepository extends JpaRepository<XuatChieu, UUID> {
}
