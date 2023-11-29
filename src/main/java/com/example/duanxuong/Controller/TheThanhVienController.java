package com.example.duanxuong.Controller;

import com.example.duanxuong.Model.TheThanhVien;
import com.example.duanxuong.Service.TheThanhVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/the-thanh-vien")
public class TheThanhVienController {
    @Autowired
    TheThanhVienService theThanhVienService;

    @GetMapping("/hien-thi")
    public  String HienThi(Model model, @RequestParam(defaultValue = "0",name = "page")Integer pageNum){
        Page<TheThanhVien> pageTheThanhVien = theThanhVienService.phanTrangTheThanhVien(pageNum,3);
        model.addAttribute("theThanhVien", new TheThanhVien());
        model.addAttribute("lstThe",pageTheThanhVien);
        model.addAttribute("totalPage",pageTheThanhVien.getTotalPages());
        model.addAttribute("currentPage",pageNum);
        return "TheThanhVienForm/TheThanhVien";
    }

    @PostMapping("/add")
    public String Them(@ModelAttribute("theThanhVien")TheThanhVien theThanhVien){
        theThanhVienService.Add(theThanhVien);
        return "redirect:/the-thanh-vien/hien-thi";
    }

    @GetMapping("/delete/{id}")
    public String Xoa(@PathVariable String id,Model model){
        theThanhVienService.Delete(UUID.fromString(id));
        return "redirect:/the-thanh-vien/hien-thi";
    }

    @GetMapping("/detail/{id}")
    public String ChiTiet(@PathVariable String id, Model model){
        TheThanhVien theThanhVien = theThanhVienService.detail(UUID.fromString(id));
        model.addAttribute("theThanhVien",theThanhVien);
        return "redirect:/the-thanh-vien/hien-thi";
    }

    @PostMapping("/update/{id}")
    public String Sua(@PathVariable String id, @ModelAttribute("theThanhVien")TheThanhVien theThanhVien){
        theThanhVienService.Update(UUID.fromString(id),theThanhVien);
        return "redirect:/the-thanh-vien/hien-thi";
    }

    @GetMapping("/search")
    public String TimKiem(@RequestParam(name = "ten",required = false)String ten,Model model){
        if(ten!=null && !ten.isEmpty()){
            List<TheThanhVien> lstTheThanhVien = theThanhVienService.searchByTen(ten);
            model.addAttribute("listThe",lstTheThanhVien);
        }else{
            List<TheThanhVien> lstTheThanhVien = theThanhVienService.getAll();
            model.addAttribute("lstThe",lstTheThanhVien);

        }
        return "the-thanh-vien/hien-thi";

    }
}

