package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.LoaiGhe;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import java.util.List;
import java.util.UUID;

public interface LoaiGheRepository extends JpaRepository<LoaiGhe, UUID> {
    @Query(value = "select * from LoaiGhe ", nativeQuery = true)
    List<LoaiGhe> getAllLoaiGhe();
    Page<LoaiGhe> findByTenloaiContaining(String ten, Pageable pageable);

}
