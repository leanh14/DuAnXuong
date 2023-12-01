package com.example.duanxuong.Service.impl;


import com.example.duanxuong.Model.ChucVu;
import com.example.duanxuong.Repository.ChucVuRepository;
import com.example.duanxuong.Service.ChucVuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class ChucVuServiceImpl implements ChucVuService {
    @Autowired
    private ChucVuRepository chucVuRepository;
    @Override
    public List<ChucVu> getAll() {
        return chucVuRepository.getAll();
    }

    @Override
    public void delete(UUID id) {
        chucVuRepository.deleteById(id);
    }

    @Override
    public void add(ChucVu chucVu) {
        chucVuRepository.save(chucVu);
    }

    @Override
    public ChucVu detail(UUID id) {
        ChucVu chucVu = chucVuRepository.findById(id).get();
        return chucVu;
    }

    @Override
    public ChucVu update(UUID id, ChucVu chucVu) {
        ChucVu chucVu1 = chucVuRepository.save(chucVu);
        return chucVu1;
    }
}
