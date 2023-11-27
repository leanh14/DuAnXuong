package com.example.bailam.service.Impl;

import com.example.bailam.model.GioHangChiTiet;
import com.example.bailam.repository.GioHangChiTietRepository;
import com.example.bailam.service.GioHangChiTietService;
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
