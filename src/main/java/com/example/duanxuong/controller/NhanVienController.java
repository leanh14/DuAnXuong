package com.example.duanxuong.controller;

import com.example.duanxuong.model.NhanVien;
import com.example.duanxuong.repository.NhanVienRepository;
import com.example.duanxuong.service.ChucVuService;
import com.example.duanxuong.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/nhan-vien")
public class NhanVienController {
    @Autowired
    NhanVienRepository nhanVienRepository;
    @Autowired
    NhanVienService nhanVienService;
    @Autowired
    ChucVuService chucVuService;

//hienthi
    @GetMapping("/hien-thi")
    public String getAll(Model model,
                         @RequestParam(value = "page",defaultValue = "0")int page){
        Integer size =5;
        Pageable pageable = PageRequest.of(page,size);
        model.addAttribute("nhanVien",new NhanVien());
        model.addAttribute("listNv",nhanVienRepository.findAll(pageable).getContent());
        model.addAttribute("totalPage",nhanVienRepository.findAll(pageable).getTotalElements());
        model.addAttribute("listCv",chucVuService.getAll());
        return "trangChu";
    }
    //detail
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable String id,Model model){
        NhanVien nhanVien = nhanVienService.detail(UUID.fromString(id));
        model.addAttribute("nhanVien",nhanVien);
        model.addAttribute("listCv",chucVuService.getAll());
        return "Update";
    }
    //delete
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable String id){
        nhanVienService.delete(UUID.fromString(id));
        return "redirect:/nhan-vien/hien-thi";
    }
    //add
    @PostMapping("/add")
    public String add(@Validated @ModelAttribute("nhanVien") NhanVien nhanVien){
        nhanVienService.add(nhanVien);
        return "redirect:/nhan-vien/hien-thi";

    }
    //update
    @PostMapping("/update/{id}")
    public String update(@PathVariable String id,
                         @ModelAttribute("nhanVien")NhanVien nhanVien){
nhanVienService.update(UUID.fromString(id),nhanVien);
        return "redirect:/nhan-vien/hien-thi";

    }
}
