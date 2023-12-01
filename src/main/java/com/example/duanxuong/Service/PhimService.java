package com.example.duanxuong.Service;

import com.example.duanxuong.Model.Phim;

import org.springframework.data.domain.Page;

import java.util.List;
import java.util.UUID;

public interface PhimService {
    List<Phim> getAllPhim();

    void delete(UUID id);

    Phim detail(UUID id);

    Phim updatePhim(UUID id, Phim phim);

    Phim add(Phim phim);

     Page<Phim> searchByTenPaged(String ten, Integer pageNum, Integer pageSize);
     Page<Phim> phanTrangPhim(Integer pageNum, Integer pageNo);
}
