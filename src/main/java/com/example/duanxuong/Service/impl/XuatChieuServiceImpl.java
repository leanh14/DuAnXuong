package com.example.duanxuong.service.impl;

import com.example.duanxuong.model.XuatChieu;
import com.example.duanxuong.repository.XuatChieuRepository;
import com.example.duanxuong.service.XuatChieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class XuatChieuServiceImpl implements XuatChieuService {
    @Autowired
    XuatChieuRepository xuatChieuRepository;
    @Override
    public List<XuatChieu> getAll() {
        return xuatChieuRepository.findAll();
    }

    @Override
    public XuatChieu detail(UUID id) {
            XuatChieu xc = xuatChieuRepository.findById(id).get();
            return xc;
        }

}
