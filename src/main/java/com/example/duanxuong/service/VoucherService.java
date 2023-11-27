package com.example.duanxuong.service;

import com.example.duanxuong.model.Voucher;

import java.util.List;
import java.util.UUID;

public interface VoucherService {
    List<Voucher> getAll();
    void delete(UUID id);
    void add(Voucher voucher);
    Voucher detail(UUID id);
    Voucher update(UUID id,Voucher voucher);
    List<Voucher> searchByMa(String ma);
}
