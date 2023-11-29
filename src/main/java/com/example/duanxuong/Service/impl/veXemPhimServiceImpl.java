package com.example.duanxuong.service.impl;

import com.example.duanxuong.model.VeXemPhim;
import com.example.duanxuong.repository.VeXemPhimRepository;
import com.example.duanxuong.service.VeXemPhimService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class veXemPhimServiceImpl implements VeXemPhimService {
    @Autowired
    VeXemPhimRepository veXemPhimRepository;

    @Override
    public List<VeXemPhim> getAll() {
        return veXemPhimRepository.findAll();
    }
}
