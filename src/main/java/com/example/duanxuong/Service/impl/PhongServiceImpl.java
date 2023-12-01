package com.example.duanxuong.Service.impl;

import com.example.duanxuong.Model.Phong;
import com.example.duanxuong.Repository.PhongRepository;
import com.example.duanxuong.Service.PhongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class PhongServiceImpl implements PhongService {
@Autowired
    private PhongRepository phongRepository;
    @Override
    public List<Phong> getAll() {
        return phongRepository.findAll();
    }
    @Override
    public void add(Phong phong) {
        phongRepository.save(phong);
    }


    public Phong detail(UUID id) {
        Phong phong = phongRepository.findById(id).get();
        return phong;
    }

    @Override
    public Phong update(Phong phong, UUID id) {
        Phong Phong1 = phongRepository.save(phong);
        return Phong1;
    }

}
