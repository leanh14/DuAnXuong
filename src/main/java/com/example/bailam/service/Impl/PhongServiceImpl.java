package com.example.bailam.service.Impl;

import com.example.bailam.model.Phong;
import com.example.bailam.repository.PhongRepository;
import com.example.bailam.service.PhongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhongServiceImpl implements PhongService {
@Autowired
    PhongRepository phongRepository;
    @Override
    public List<Phong> getAll() {
        return phongRepository.findAll();
    }
}
