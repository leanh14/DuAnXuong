package com.example.bailam.Controller;

import com.example.bailam.model.GioHangChiTiet;
import com.example.bailam.model.XuatChieu;
import com.example.bailam.service.XuatChieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/xuatchieu")
public class SuatChieuController {
    @Autowired
    XuatChieuService xuatChieuService;

    @GetMapping("/hien-thi")
    public String getAll(Model model){
        List<XuatChieu> listxc = xuatChieuService.getAll();
        model.addAttribute("listxc",listxc);
        model.addAttribute("xuatchieu",new XuatChieu());
        return "xuatchieu/trangchuxuatchieu";
    }


}
