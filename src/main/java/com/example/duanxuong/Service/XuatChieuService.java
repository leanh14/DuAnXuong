package com.example.duanxuong.service;

import com.example.duanxuong.model.XuatChieu;

import java.util.List;
import java.util.UUID;

public interface XuatChieuService {
   List<XuatChieu> getAll();
   XuatChieu detail(UUID id);
}
