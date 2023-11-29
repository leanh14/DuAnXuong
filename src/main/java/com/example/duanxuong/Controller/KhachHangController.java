package com.example.duanxuong.Controller;

import com.example.duanxuong.Model.KhachHang;
import com.example.duanxuong.Service.KhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/khach-hang")
public class KhachHangController {
    @Autowired
    KhachHangService khachHangService;

    @GetMapping("/hien-thi")
    public String HienThi(Model model,@RequestParam(defaultValue = "0",name = "page")Integer pagaNum){
        Page<KhachHang> pageKhachHang = khachHangService.phanTrangKhachHang(pagaNum,3);
        model.addAttribute("KhachHang",new KhachHang());
        model.addAttribute("lstKhachHang",pageKhachHang);
        model.addAttribute("totalPage",pageKhachHang.getTotalPages());
        model.addAttribute("currentPage",pagaNum);
        return "KhachHangForm/KhachHang";
    }

    @GetMapping("/detail/{id}")
    public String ChiTiet(@PathVariable String id,Model model){
        KhachHang khachHang = khachHangService.detail(UUID.fromString(id));
        model.addAttribute("KhachHang",khachHang);
        return "KhachHangForm/KhachHangDetail";
    }
    @GetMapping("/delete/{id}")
    public String Xoa(@PathVariable String id,Model model){
        khachHangService.Delete(UUID.fromString(id));
        return "redirect:/khach-hang/hien-thi";
    }

    @PostMapping("/add")
    public String Them(@ModelAttribute("khachHang") KhachHang khachHang){
        khachHangService.Add(khachHang);
        return "KhachHangForm/KhachHang";
    }

    @PostMapping("/update/{id}")
    public String Sua(@PathVariable String id, @ModelAttribute("khachHang")KhachHang khachHang){
        khachHangService.Update(UUID.fromString(id),khachHang);
        return "redirect:/khach-hang/hien-thi";
    }
}
