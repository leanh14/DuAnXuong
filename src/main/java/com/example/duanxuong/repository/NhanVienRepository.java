package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface NhanVienRepository extends JpaRepository<NhanVien, UUID> {
    @Query(value = "select * from NhanVien",nativeQuery = true)
    List<NhanVien>getAll();
}
