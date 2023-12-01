package com.example.duanxuong.Repository;

import com.example.duanxuong.Model.Ghe;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;
@Repository
public interface GheRepository extends JpaRepository<Ghe,UUID> {
    @Query(value = "select * from HangGhe ", nativeQuery = true)
    List<Ghe> getAllGhe();
    Page<Ghe> findByTenghe(String ten, Pageable pageable);
}
