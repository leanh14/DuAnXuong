package com.example.duanxuong.service.iml;

import com.example.duanxuong.model.VeDat;
import com.example.duanxuong.repository.VeDatRepository;
import com.example.duanxuong.service.VeDatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class VeDatServiceIml implements VeDatService {

    @Autowired
    VeDatRepository veDatRepository;

    @Override
    public List<VeDat> getAll() {
        return veDatRepository.findAll();
    }

    @Override
    public void add(VeDat veDat) {
        veDatRepository.save(veDat);

    }

    @Override
    public void delete(UUID id) {
        veDatRepository.deleteById(id);
    }

    @Override
    public VeDat detail(UUID id) {
        VeDat veDat = veDatRepository.findById(id).get();
        return veDat;
    }

    @Override
    public VeDat update(UUID id, VeDat veDat) {
        VeDat veDat1 = veDatRepository.save(veDat);
        return veDat1;
    }
}
