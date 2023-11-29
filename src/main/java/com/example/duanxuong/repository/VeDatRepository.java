package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.VeDat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface VeDatRepository extends JpaRepository<VeDat, UUID> {
    @Query(value = "select * from VeDat",nativeQuery = true)
    List<VeDat> getAll();

}
