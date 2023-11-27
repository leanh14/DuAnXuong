package com.example.duanxuong.Service;

import com.example.duanxuong.Model.Phong;

import java.util.List;
import java.util.UUID;

public interface PhongService {
    List<Phong> getAll();
    void add(Phong phong);
    Phong detail(UUID id);
    Phong update(UUID id, Phong phong);
}
