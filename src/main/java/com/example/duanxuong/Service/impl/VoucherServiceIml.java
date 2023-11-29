package com.example.duanxuong.Service.impl;

import com.example.duanxuong.Model.Voucher;
import com.example.duanxuong.Repository.VoucherRepository;
import com.example.duanxuong.Service.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class VoucherServiceIml  implements VoucherService {

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
        return voucher1;
    }

    @Override
    public List<Voucher> searchByMa(String ma) {
        return voucherRepository.findByMa(ma);
    }
}
