package com.example.bailam.repository;

import com.example.bailam.model.GioHangChiTiet;
import com.example.bailam.model.LoaiGhe;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface GioHangChiTietRepository  extends JpaRepository<GioHangChiTiet, UUID> {
}
