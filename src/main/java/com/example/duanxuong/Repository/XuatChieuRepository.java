package com.example.duanxuong.Repository;


import com.example.duanxuong.Model.XuatChieu;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface XuatChieuRepository extends JpaRepository<XuatChieu, UUID> {
}
