package com.example.duanxuong.controller;

import com.example.duanxuong.model.Ghe;
import com.example.duanxuong.model.LoaiGhe;
import com.example.duanxuong.model.Phong;
import com.example.duanxuong.service.GheService;
import com.example.duanxuong.service.LoaiGheService;
import com.example.duanxuong.service.PhongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/ghe")
public class GheController {
    @Autowired
    GheService gheService;
    @Autowired
    LoaiGheService loaiGheService;
    @Autowired
    PhongService phongService;


    @GetMapping("/hien-thi")
    public String getAllGhe(
            Model model,
            @RequestParam(defaultValue = "0", name = "page") Integer pageNum){
        // Xử lý phân trang
        Page<Ghe> pageghe = gheService.phanTrangGhe(pageNum, 2);
        model.addAttribute("listGhe", pageghe);
        model.addAttribute("ghe", new Ghe());

        return "ghe/trangchughe";
    }
    @PostMapping("/add")
    public String add(@ModelAttribute("ghe") Ghe ghe,Model model) {
        gheService.add(ghe);
        return "redirect:/ghe/hien-thi";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable String id, @ModelAttribute("ghe") Ghe g) {
        gheService.update(UUID.fromString(id), g);
        return "redirect:/ghe/hien-thi";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable String id, Model model) {
        Ghe ghe = gheService.detail(UUID.fromString(id));
        model.addAttribute("ghe", ghe);

        List<Phong> listPhong = phongService.getAll();
        model.addAttribute("phong",listPhong);
        List<LoaiGhe> listLG = loaiGheService.getAllGhe();
        model.addAttribute("loaighe",listLG);

        return "/ghe/detail";
    }
    @GetMapping("/trang-them")
    public String ht(@ModelAttribute("ghe") Ghe ghe,Model model) {
        List<LoaiGhe> listLG = loaiGheService.getAllGhe();
        model.addAttribute("loaighe",listLG);

        List<Phong> listPhong = phongService.getAll();
        model.addAttribute("phong",listPhong);
        return "ghe/trangthem";
    }


}
