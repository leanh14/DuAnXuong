package com.example.duanxuong.Controller;

import com.example.duanxuong.Model.LoaiGhe;
import com.example.duanxuong.Service.LoaiGheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/loaighe")
public class LoaiGheController {
    @Autowired
    LoaiGheService loaiGheService;

@GetMapping("/hien-thi")
public String getAllLoaiGhe(
        Model model,
        @RequestParam(defaultValue = "0", name = "page") Integer pageNum,
        @RequestParam(name = "ten", required = false) String ten) {

    // Xử lý phân trang
    Page<LoaiGhe> pageloaighe = loaiGheService.phanTrangLoaiGhe(pageNum, 2);
    model.addAttribute("listloaighe", pageloaighe);
    model.addAttribute("loaighe", new LoaiGhe());
    return "loaighe/trangchughe";
}



    @PostMapping("/add")
    public String add(@ModelAttribute("loaighe") LoaiGhe loaiGhe) {
        loaiGheService.add(loaiGhe);
        return "redirect:/loaighe/hien-thi";
    }
    @GetMapping("/trang-them")
    public String ht(@ModelAttribute("loaighe") LoaiGhe loaiGhe) {
        return "loaighe/themloaighe";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable String id, Model model) {
        LoaiGhe loaiGhe = loaiGheService.detail(UUID.fromString(id));
        model.addAttribute("loaighe", loaiGhe);
        return "/loaighe/detail";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable String id, @ModelAttribute("loaighe") LoaiGhe lg ) {
        loaiGheService.update(UUID.fromString(id), lg);
        return "redirect:/loaighe/hien-thi";
    }

    @GetMapping("/tim-kiem")
    public String searchByName(Model model,
                               @RequestParam(defaultValue = "0", name = "page") Integer pageNum,
                               @RequestParam(name = "ten", required = false) String ten) {
        Page<LoaiGhe> pageloaighe;
        if (ten != null && !ten.isEmpty()) {
            pageloaighe = loaiGheService.searchByTenPaged(ten, pageNum, 2);
        } else {
            pageloaighe = loaiGheService.phanTrangLoaiGhe(pageNum, 2);
        }
        model.addAttribute("listloaighe", pageloaighe);
        return "loaighe/trangchughe";
    }
}
