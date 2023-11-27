package com.example.bailam.service.Impl;

import com.example.bailam.model.Phim;
import com.example.bailam.model.XuatChieu;
import com.example.bailam.repository.XuatChieuRepository;
import com.example.bailam.service.XuatChieuService;
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
