package com.example.duanxuong.Service.impl;

import com.example.duanxuong.Model.Tang;
import com.example.duanxuong.Repository.TangRepository;
import com.example.duanxuong.Service.TangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;
@Service
public class TangServiceImpl implements TangService {
    @Autowired
    private TangRepository tangRepository;
    @Override
    public List<Tang> getAll() {
        return tangRepository.findAll();
    }

    @Override
    public void add(Tang tang) {
        tangRepository.save(tang);
    }

    @Override
    public Tang detail(UUID id) {
        Tang tang = tangRepository.findById(id).get();
        return tang;
    }

    @Override
    public Tang update(Tang tang, UUID id) {
        Tang tang1 = tangRepository.save(tang);
        return tang1;
    }
  }
