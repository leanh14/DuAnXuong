package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.GioHangChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface GioHangChiTietRepository  extends JpaRepository<GioHangChiTiet, UUID> {
}
