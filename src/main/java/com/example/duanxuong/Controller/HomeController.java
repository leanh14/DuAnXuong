package com.example.duanxuong.controller;

import com.example.duanxuong.service.PhimService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/phim")
public class HomeController {
    @Autowired
    PhimService phimService;

    @GetMapping("/home")
    public String trangchu() {
        return "trangchu/listphim";
    }

//    @GetMapping("/hien-thi")
//    public String getAllPhim(Model model) {
//        List<Phim> listp = phimService.getAllPhim();
//        model.addAttribute("listphim", listp);
//        model.addAttribute("phim", new Phim());
//        return "trangchu/listphim";
//    }


}
