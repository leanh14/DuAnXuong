package com.example.duanxuong.service;
import com.example.duanxuong.model.Phong;

import java.util.List;
import java.util.UUID;

public interface PhongService {
    List<Phong> getAll();

    void add(Phong phong);

    Phong detail(UUID id);

    Phong update(Phong Phong, UUID id);
}
