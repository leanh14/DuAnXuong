package com.example.duanxuong.Service.impl;


import com.example.duanxuong.Model.XuatChieu;
import com.example.duanxuong.Repository.XuatChieuReposiory;
import com.example.duanxuong.Service.XuatChieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class XuatChieuServiceImpl implements XuatChieuService {

    @Autowired
    XuatChieuReposiory xuatChieuReposiory;

    @Override
    public List<XuatChieu> getAll() {
        return xuatChieuReposiory.getAll();
    }

    @Override
    public XuatChieu detail(UUID id) {
        XuatChieu xuatChieu = xuatChieuReposiory.findById(id).get();
        return xuatChieu;
    }

    @Override
    public void add(XuatChieu xuatChieu) {
        xuatChieuReposiory.save(xuatChieu);
    }


    @Override
    public XuatChieu update(UUID id, XuatChieu xuatChieu) {
        XuatChieu xuatChieu1  = xuatChieuReposiory.save(xuatChieu);
        return xuatChieu1;
    }
}
