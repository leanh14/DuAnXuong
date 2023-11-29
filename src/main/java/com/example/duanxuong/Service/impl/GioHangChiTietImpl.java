package com.example.duanxuong.service.impl;

import com.example.duanxuong.model.GioHangChiTiet;
import com.example.duanxuong.repository.GioHangChiTietRepository;
import com.example.duanxuong.service.GioHangChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GioHangChiTietImpl implements GioHangChiTietService {
    @Autowired
    GioHangChiTietRepository gioHangChiTietRepository;
    @Override
    public List<GioHangChiTiet> getAll() {
        return gioHangChiTietRepository.findAll();
    }
}
