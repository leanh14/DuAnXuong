package com.example.duanxuong.Controller;


import com.example.duanxuong.Model.XuatChieu;

import com.example.duanxuong.Repository.XuatChieuReposiory;
import com.example.duanxuong.Service.*;
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
@RequestMapping("/xuatchieu")
public class SuatChieuController {
    @Autowired
    XuatChieuService xuatChieuService;
    @Autowired
    XuatChieuReposiory xuatChieuReposiory;

    @Autowired
    RapService rapService;

    @Autowired
    PhimService phimService;

    @Autowired
    PhongService phongService;

    @Autowired
    TangService tangService;


    @GetMapping("/hien-thi")
    public String getAll(Model model,
                         @RequestParam(value = "page",defaultValue = "0")int page){
        Integer size = 5;
        Pageable pageable = PageRequest.of(page,size);

        model.addAttribute("xuatChieu",new XuatChieu());
        model.addAttribute("listXC",xuatChieuReposiory.findAll(pageable).getContent());
        model.addAttribute("totalPage",xuatChieuReposiory.findAll(pageable).getTotalElements());
        model.addAttribute("listRap",rapService.getAll());
        model.addAttribute("listPhong",phongService.getAll());
        model.addAttribute("listPhim",phimService.getAllPhim());
        model.addAttribute("listTang",tangService.getAll());

        return "XuatChieuForm/trangChu";
    }
    //detail
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable String id,Model model){
        XuatChieu xuatChieu = xuatChieuService.detail(UUID.fromString(id));
        model.addAttribute("xuatChieu",xuatChieu);
        model.addAttribute("listRap",rapService.getAll());
        model.addAttribute("listPhong",phongService.getAll());
        model.addAttribute("listPhim",phimService.getAllPhim());
        model.addAttribute("listTang",tangService.getAll());
        return"XuatChieuForm/Update" ;
    }
    //add
    @PostMapping("/add")
    public String add(@Validated @ModelAttribute("xuatChieu")XuatChieu xuatChieu){
        xuatChieuService.add(xuatChieu);
        return "redirect:/xuatchieu/hien-thi";
    }
    //update
    @PostMapping("/update/{id}")
    public String update(@PathVariable String id,
                         @ModelAttribute("xuatChieu")XuatChieu xuatChieu){
        xuatChieuService.update(UUID.fromString(id),xuatChieu);
        return "redirect:/xuatchieu/hien-thi";

    }


}
