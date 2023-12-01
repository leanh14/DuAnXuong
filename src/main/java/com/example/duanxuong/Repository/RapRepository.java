package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.ChucVu;
import com.example.duanxuong.Model.Rap;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface RapRepository extends JpaRepository<Rap, UUID> {
    @Query(value = "select * from Rap",nativeQuery = true)
    List<Rap> getAll();

}
