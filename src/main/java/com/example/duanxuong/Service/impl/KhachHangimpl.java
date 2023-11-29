package com.example.duanxuong.Service.impl;

import com.example.duanxuong.Model.KhachHang;
import com.example.duanxuong.Repository.KhachHangRepository;
import com.example.duanxuong.Service.KhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class KhachHangimpl implements KhachHangService {
    @Autowired
    KhachHangRepository khachHangRepository;

    @Override
    public List<KhachHang> getALL() {
         return khachHangRepository.findAll();
    }

    @Override
    public Page<KhachHang> phanTrangKhachHang(Integer pageNum, Integer pageNo) {
        Pageable pageable = PageRequest.of(pageNum,pageNo);
            return khachHangRepository.findAll(pageable);
    }

    @Override
    public void Delete(UUID id) {
        khachHangRepository.deleteById(id);
    }

    @Override
    public KhachHang detail(UUID id) {
        return khachHangRepository.findById(id).get();
    }

    @Override
    public Boolean Add(KhachHang khachHang) {
        khachHangRepository.save(khachHang);
             return true;
    }

    @Override
    public Boolean Update(UUID id, KhachHang khachHang) {
        khachHangRepository.save(khachHang);
               return true;
    }

}
