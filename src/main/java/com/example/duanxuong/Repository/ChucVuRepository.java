package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.ChucVu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface ChucVuRepository extends JpaRepository<ChucVu, UUID> {
    @Query(value = "select * from ChucVu ",nativeQuery = true)
    List<ChucVu> getAll();
}
