package com.example.duanxuong.service.impl;

import com.example.duanxuong.model.Voucher;
import com.example.duanxuong.repository.VoucherRepository;
import com.example.duanxuong.service.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class VoucherServiceImpl implements VoucherService {
    @Autowired
    VoucherRepository voucherRepository;
    @Override
    public List<Voucher> getAll() {
        return voucherRepository.findAll();
    }

    @Override
    public void delete(UUID id) {

        voucherRepository.deleteById(id);
    }

    @Override
    public void add(Voucher voucher) {
        voucherRepository.save(voucher);

    }

    @Override
    public Voucher detail(UUID id) {
        Voucher voucher = voucherRepository.findById(id).get();
        return voucher;
    }

    @Override
    public Voucher update(UUID id, Voucher voucher) {
        Voucher voucher1 = voucherRepository.save(voucher);
        return null;
    }

    @Override
    public List<Voucher> searchByMa(String ma) {
        return null;
    }
}
