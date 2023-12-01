package com.example.duanxuong.Service;

import com.example.duanxuong.Model.Tang;


import java.util.List;
import java.util.UUID;

public interface TangService {
    List<Tang> getAll();
    void add(Tang tang);
    Tang detail (UUID id);
    Tang update(Tang tang, UUID id);
    void delete(UUID id);
}
