package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.XuatChieu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface XuatChieuReposiory  extends JpaRepository<XuatChieu, UUID> {
    @Query(value = "select *from XuatChieuPhim",nativeQuery = true)
    List<XuatChieu>getAll();
}
