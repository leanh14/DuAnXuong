package com.example.duanxuong.Controller;


import com.example.duanxuong.Model.Phong;
import com.example.duanxuong.Repository.PhongRepository;
import com.example.duanxuong.Service.PhongService;
import com.example.duanxuong.Service.TangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/phong")
public class PhongController {
    @Autowired
    private PhongRepository phongRepository;
    @Autowired
    private PhongService phongService;
    @Autowired
    private TangService tangService;

    @GetMapping("/hien-thi")
    public String getAll(Model model, @RequestParam(value = "num", defaultValue = "0") Integer num){
        Integer size = 5;
        Pageable pageable = PageRequest.of(num,size);
        model.addAttribute("listp", phongRepository.findAll(pageable).getContent());
        model.addAttribute("totalPage", phongRepository.findAll(pageable).getTotalElements());
        model.addAttribute("phong", new Phong());
        model.addAttribute("listTang", tangService.getAll());
        return "phong/indexPhong";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("phong") Phong phong){
        phongService.add(phong);
        return "redirect:/phong/hien-thi";
    }

    @PostMapping("/update/{id}")
    public String update(@ModelAttribute("phong") Phong phong, @PathVariable("id") String id){
        phongService.update(phong, UUID.fromString(id));
        return "redirect:/phong/hien-thi";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id")String id, Model model){
        model.addAttribute("phong", phongService.detail(UUID.fromString(id)));
        model.addAttribute("listTang", tangService.getAll());
        return "phong/detailPhong";
    }


}
