package com.example.duanxuong.service;

import com.example.duanxuong.model.Tang;

import java.util.List;
import java.util.UUID;

public interface TangService {
    List<Tang> getAll();
    void add(Tang tang);
    Tang detail (UUID id);
    Tang update(Tang tang, UUID id);
    void delete(UUID id);
}
