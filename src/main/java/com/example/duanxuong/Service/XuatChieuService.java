package com.example.duanxuong.Service;


import com.example.duanxuong.Model.XuatChieu;

import java.util.List;
import java.util.UUID;

public interface XuatChieuService {
   List<XuatChieu> getAll();
   XuatChieu detail(UUID id);
}
