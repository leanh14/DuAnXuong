package com.example.duanxuong.Service;

import com.example.duanxuong.Model.Ghe;
import org.springframework.data.domain.Page;

import java.util.UUID;

public interface GheService {


    void delete(UUID id);

    Ghe detail(UUID id);

    Ghe update(UUID id, Ghe ghe);

    Ghe add(Ghe ghe);

    Page<Ghe> searchByTenPaged(String ten, Integer pageNum, Integer pageSize);

    Page<Ghe> phanTrangGhe(Integer pageNum, Integer pageNo);
}
