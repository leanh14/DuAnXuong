package com.example.duanxuong.controller;

import com.example.duanxuong.model.Tang;
import com.example.duanxuong.service.TangService;
import com.example.duanxuong.repository.TangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/tang")
public class TangController {
    @Autowired
    private TangService tangService;

    @Autowired
    private TangRepository tangRepository;

    @GetMapping("/hien-thi")
    public String getAll(Model model, @RequestParam(value = "num", defaultValue = "0")Integer num){
        Integer size = 5;
        Pageable pageable = PageRequest.of(num, size);
        model.addAttribute("list", tangRepository.findAll(pageable).getContent());
        model.addAttribute("totalPage", tangRepository.findAll(pageable).getTotalElements());
        model.addAttribute("tang", new Tang());
        return "tang/index";
    }

    @PostMapping("/add")
    public String add(@ModelAttribute("tang") Tang tang){
        tangService.add(tang);
        return "redirect:/tang/hien-thi";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") String id, Model model){
        model.addAttribute("tang", tangService.detail(UUID.fromString(id)));
        return "tang/detail";
    }

    @PostMapping("/update/{id}")
    public String update(@ModelAttribute("tang") Tang tang,
                         @PathVariable("id") String id){
        tangService.update(tang, UUID.fromString(id));
        return "redirect:/tang/hien-thi";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id")String id){
        tangService.delete(UUID.fromString(id));
        return "redirect:/tang/hien-thi";
    }

}
