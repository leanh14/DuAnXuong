package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.GioHangChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;
@Repository
public interface GioHangChiTietRepository  extends JpaRepository<GioHangChiTiet, UUID> {
}
