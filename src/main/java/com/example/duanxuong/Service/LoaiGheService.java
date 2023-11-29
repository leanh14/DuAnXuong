package com.example.duanxuong.Service;

import com.example.duanxuong.Model.LoaiGhe;
import org.springframework.data.domain.Page;


import java.util.List;
import java.util.UUID;

public interface LoaiGheService{
    List<LoaiGhe> getAllGhe();

    void delete(UUID id);

    LoaiGhe detail(UUID id);

    LoaiGhe update(UUID id, LoaiGhe loaighe);

    LoaiGhe add(LoaiGhe lg);

    Page<LoaiGhe> searchByTenPaged(String ten, Integer pageNum, Integer pageSize);

    Page<LoaiGhe> phanTrangLoaiGhe(Integer pageNum, Integer pageNo);

}
