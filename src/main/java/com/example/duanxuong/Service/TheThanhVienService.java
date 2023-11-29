package com.example.duanxuong.Service;

import com.example.duanxuong.Model.TheThanhVien;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.UUID;

public interface TheThanhVienService {
    List<TheThanhVien> getAll();
    Page<TheThanhVien> phanTrangTheThanhVien(Integer pageNum, Integer pageNo);

    void Delete(UUID id);

    void Add(TheThanhVien theThanhVien);
    void Update(UUID id , TheThanhVien theThanhVien);
    TheThanhVien detail(UUID id);
    List<TheThanhVien> searchByTen(String ten);
}
