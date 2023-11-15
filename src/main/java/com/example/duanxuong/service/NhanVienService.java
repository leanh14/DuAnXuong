package com.example.duanxuong.service;

import com.example.duanxuong.model.NhanVien;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.UUID;

public interface NhanVienService {
    List<NhanVien> getAll();
    void add(NhanVien nhanVien);
    void delete(UUID id);
    NhanVien detail(UUID id);
    NhanVien update(UUID id,NhanVien nhanVien);
}
