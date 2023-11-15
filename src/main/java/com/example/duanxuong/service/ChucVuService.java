package com.example.duanxuong.service;

import com.example.duanxuong.model.ChucVu;

import java.util.List;
import java.util.UUID;

public interface ChucVuService {
    List<ChucVu> getAll();
    void delete(UUID id);
    void add(ChucVu chucVu);
    ChucVu detail(UUID id);
    ChucVu update(UUID id,ChucVu chucVu);

}
