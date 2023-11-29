package com.example.duanxuong.repository;

import com.example.duanxuong.model.XuatChieu;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface XuatChieuRepository extends JpaRepository<XuatChieu, UUID> {
}
