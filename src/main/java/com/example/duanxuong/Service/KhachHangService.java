package com.example.duanxuong.Service;

import com.example.duanxuong.Model.KhachHang;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.UUID;

public interface KhachHangService {
    List<KhachHang> getALL();
    Page<KhachHang> phanTrangKhachHang(Integer pageNum, Integer pageNo);

    void Delete(UUID id);
     KhachHang   detail(UUID id);

    Boolean Add(KhachHang khachHang);

    Boolean Update(UUID id , KhachHang khachHang);

}
