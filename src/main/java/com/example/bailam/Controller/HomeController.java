package com.example.bailam.Controller;

import com.example.bailam.model.Phim;
import com.example.bailam.service.PhimService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

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
