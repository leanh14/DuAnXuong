package com.example.duanxuong.service.impl;


import com.example.duanxuong.model.Ghe;
import com.example.duanxuong.repository.GheRepository;
import com.example.duanxuong.service.GheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class GheServiceImpl implements GheService {
    @Autowired
    GheRepository gheRepository;

    @Override
    public void delete(UUID id) {
    }

    @Override
    public Ghe detail(UUID id) {
        Ghe g = gheRepository.findById(id).get();
        return g;
    }

    @Override
    public Ghe update(UUID id, Ghe ghe) {
        return gheRepository.save(ghe);
    }

    @Override
    public Ghe add(Ghe ghe) {
        return gheRepository.save(ghe);
    }

    @Override
    public Page<Ghe> searchByTenPaged(String ten, Integer pageNum, Integer pageSize) {
        return null;
    }

    @Override
    public Page<Ghe> phanTrangGhe(Integer pageNum, Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNum, pageNo);
        return gheRepository.findAll(pageable);
    }
}
