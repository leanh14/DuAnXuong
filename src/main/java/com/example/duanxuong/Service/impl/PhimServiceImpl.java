package com.example.duanxuong.Service.impl;


import com.example.duanxuong.Model.Phim;
import com.example.duanxuong.Repository.PhimRepository;
import com.example.duanxuong.Service.PhimService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class PhimServiceImpl implements PhimService {
    @Autowired
    PhimRepository phimRepository;

    @Override
    public List<Phim> getAllPhim() {
        return phimRepository.getAllPhim();
    }

    @Override
    public void delete(UUID id) {
        phimRepository.deleteById(id);
    }

    @Override
    public Phim detail(UUID id) {
        Phim p = phimRepository.findById(id).get();
        return p;
    }

    @Override
    public Phim updatePhim(UUID id, Phim phim) {
        Phim p = phimRepository.save(phim);
        return p;
    }

    @Override
    public Phim add(Phim phim) {
        Phim p = phimRepository.save(phim);
        return p;
    }

    @Override
    public Page<Phim> searchByTenPaged(String ten, Integer pageNum, Integer pageSize) {
        Pageable pageable = PageRequest.of(pageNum, pageSize);
        return phimRepository.findByTenContaining(ten,pageable);
    }

    @Override
    public Page<Phim> phanTrangPhim(Integer pageNum, Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNum, pageNo);
        return phimRepository.findAll(pageable);
    }
}
