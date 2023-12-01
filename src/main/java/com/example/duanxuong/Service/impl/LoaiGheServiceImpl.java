package com.example.duanxuong.Service.impl;


import com.example.duanxuong.Model.LoaiGhe;
import com.example.duanxuong.Repository.LoaiGheRepository;
import com.example.duanxuong.Service.LoaiGheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class LoaiGheServiceImpl implements LoaiGheService {
    @Autowired
    LoaiGheRepository loaiGheRepository;

    @Override
    public List<LoaiGhe> getAllGhe() {
        return loaiGheRepository.getAllLoaiGhe();
    }

    @Override
    public void delete(UUID id) {

    }

    @Override
    public LoaiGhe detail(UUID id) {
        LoaiGhe l = loaiGheRepository.findById(id).get();
        return l;
    }

    @Override
    public LoaiGhe update(UUID id, LoaiGhe loaighe) {
        LoaiGhe p = loaiGheRepository.save(loaighe);
        return p;
    }

    @Override
    public LoaiGhe add(LoaiGhe lg) {
        LoaiGhe p = loaiGheRepository.save(lg);
        return p;
    }
    @Override
    public Page<LoaiGhe> searchByTenPaged(String ten, Integer pageNum, Integer pageSize) {
        Pageable pageable = PageRequest.of(pageNum, pageSize);
        return loaiGheRepository.findByTenloaiContaining(ten,pageable);
    }
    @Override
    public Page<LoaiGhe> phanTrangLoaiGhe(Integer pageNum, Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNum, pageNo);
        return loaiGheRepository.findAll(pageable);
    }
}
