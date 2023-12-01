package com.example.duanxuong.Service;


import com.example.duanxuong.Model.NhanVien;

import java.util.List;
import java.util.UUID;

public interface NhanVienService {
    List<NhanVien> getAll();
    void add(NhanVien nhanVien);
    void delete(UUID id);
    NhanVien detail(UUID id);
    NhanVien update(UUID id,NhanVien nhanVien);
}
