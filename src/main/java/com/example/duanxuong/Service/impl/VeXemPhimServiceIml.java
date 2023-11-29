package com.example.duanxuong.Service.impl;

import com.example.duanxuong.Model.VeXemPhim;
import com.example.duanxuong.Repository.VeXemPhimRepository;
import com.example.duanxuong.Service.VeXemPhimService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VeXemPhimServiceIml implements VeXemPhimService {
    @Autowired
    VeXemPhimRepository veXemPhimRepository;

    @Override
    public List<VeXemPhim> getAll() {
        return veXemPhimRepository.findAll();
    }
}
