package com.example.duanxuong.Service.impl;

import com.example.duanxuong.Model.TheThanhVien;
import com.example.duanxuong.Repository.TheThanhVienRepository;
import com.example.duanxuong.Service.TheThanhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class TheThanhVienImpl implements TheThanhVienService {
    @Autowired
    TheThanhVienRepository theThanhVienRepository;


    @Override
    public List<TheThanhVien> getAll() {
        return theThanhVienRepository.findAll();
    }

    @Override
    public Page<TheThanhVien> phanTrangTheThanhVien(Integer pageNum, Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNum,pageNo);
        return theThanhVienRepository.findAll(pageable);
    }

    @Override
    public void Delete(UUID id) {
        theThanhVienRepository.deleteById(id);
    }

    @Override
    public void Add(TheThanhVien theThanhVien) {
        theThanhVienRepository.save(theThanhVien);
    }

    @Override
    public void Update(UUID id, TheThanhVien theThanhVien) {
        theThanhVienRepository.save(theThanhVien);
    }

    @Override
    public TheThanhVien detail(UUID id) {
        TheThanhVien theThanhVien = theThanhVienRepository.findById(id).get();
        return theThanhVien;
    }

    @Override
    public List<TheThanhVien> searchByTen(String ten) {
        return theThanhVienRepository.findByTenContaining(ten);
    }
}
