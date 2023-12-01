package com.example.duanxuong.Service.impl;

import com.example.duanxuong.Model.Rap;
import com.example.duanxuong.Repository.RapRepository;
import com.example.duanxuong.Service.RapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RapServiceImpl implements RapService {
    @Autowired
    RapRepository rapRepository;
    @Override
    public List<Rap> getAll() {
        return rapRepository.getAll();
    }
}
