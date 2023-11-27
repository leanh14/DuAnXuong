package com.example.bailam.Controller;

import com.example.bailam.model.GioHangChiTiet;
import com.example.bailam.model.XuatChieu;
import com.example.bailam.service.GioHangChiTietService;
import com.example.bailam.service.XuatChieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/giohangchitiet")
public class GioHangChiTietController {
    @Autowired
    GioHangChiTietService gioHangChiTietService;
    @Autowired
    XuatChieuService xuatChieuService;

    @GetMapping("/hien-thi")
    public String getAll(Model model){
        List<GioHangChiTiet> listgh = gioHangChiTietService.getAll();
        model.addAttribute("listghct",listgh);
        model.addAttribute("giohangchitiet",new GioHangChiTiet());
        return "GioHangChiTiet/trangchu";
    }

    @PostMapping ("/add")
    public String themVaoGioHang(@RequestParam("xuatChieuId") UUID xuatChieuId,
                                 Model model) {

        XuatChieu xuatChieu = xuatChieuService.detail(xuatChieuId);

        return "redirect:/giohangchitiet/hien-thi";
    }

    @GetMapping("/detail/{id}/{ma}/{gia}")
    public String detail(@PathVariable("id") UUID id, @PathVariable("ma") String ma,@PathVariable("gia") Double gia, Model model) {

        XuatChieu xuatchieu = xuatChieuService.detail(id);
        model.addAttribute("xuatchieu", xuatchieu);
        model.addAttribute("maXuatChieu", ma);
        model.addAttribute("gia", gia);
        model.addAttribute("giohangchitiet", new GioHangChiTiet());
        return "GioHangChiTiet/chitiet";
    }

}
