package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.TheThanhVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface TheThanhVienRepository extends JpaRepository<TheThanhVien, UUID> {
    @Query(value = "select * from thethanhvien",nativeQuery = true)
    List<TheThanhVien> getAllTheThanhVien();
    List<TheThanhVien> findByTenContaining(String ten);
}
