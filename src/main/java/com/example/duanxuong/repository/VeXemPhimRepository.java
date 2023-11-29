package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.VeXemPhim;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface VeXemPhimRepository extends JpaRepository<VeXemPhim, UUID> {
    @Query(value = "select * from VeXemPhim",nativeQuery = true)
    List<VeXemPhim> getAll();
}
