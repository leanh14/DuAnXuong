package com.example.duanxuong.repository;

import com.example.duanxuong.model.LoaiGhe;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;
@Repository
public interface LoaiGheRepository extends JpaRepository<LoaiGhe, UUID> {
    @Query(value = "select * from LoaiGhe ", nativeQuery = true)
    List<LoaiGhe> getAllLoaiGhe();
    Page<LoaiGhe> findByTenloaiContaining(String ten, Pageable pageable);

}
