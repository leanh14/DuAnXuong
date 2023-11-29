package com.example.duanxuong.Service.impl;

import com.example.duanxuong.Model.GioHangChiTiet;
import com.example.duanxuong.Repository.GioHangChiTietRepository;
import com.example.duanxuong.Service.GioHangChiTietService;
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
