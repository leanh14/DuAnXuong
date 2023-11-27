package com.example.bailam.service;

import com.example.bailam.model.Phim;
import com.example.bailam.model.XuatChieu;

import java.util.List;
import java.util.UUID;

public interface XuatChieuService {
   List<XuatChieu> getAll();
   XuatChieu detail(UUID id);
}
