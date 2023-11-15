package com.example.duanxuong.controller;

import com.example.duanxuong.model.ChucVu;
import com.example.duanxuong.repository.ChucVuRepository;
import com.example.duanxuong.service.ChucVuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/chuc-vu")
public class ChucVuController {
    @Autowired
    ChucVuRepository chucVuRepository;
    @Autowired
    ChucVuService chucVuService;
    //hienthi9
    @GetMapping("/hien-thi")
    public String getAll(Model model,
                         @RequestParam(value = "page",defaultValue = "0")int page){
        Integer size = 5;
        Pageable pageable = PageRequest.of(page,size);
        model.addAttribute("chucVu",new ChucVu());
        model.addAttribute("listCv",chucVuRepository.findAll(pageable).getContent());
        model.addAttribute("totalPage",chucVuRepository.findAll(pageable).getTotalElements());
        return "/chucVuForm/trangChu";
    }
    //detail
    @GetMapping("/detail/{id}")
    public  String detail(@PathVariable String id, Model model){
        ChucVu chucVu = chucVuService.detail(UUID.fromString(id));
        model.addAttribute("chucVu",chucVu);
        return "/chucVuForm/Update";
    }
    //delete
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable String id){
        chucVuService.delete(UUID.fromString(id));
        return "redirect:/chuc-vu/hien-thi";
    }
    //add
    @PostMapping("/add")
    public String add(@Validated @ModelAttribute("chucVu")ChucVu chucVu){
        chucVuService.add(chucVu);
        return "redirect:/chuc-vu/hien-thi";
    }
    //update
    @PostMapping("/update/{id}")
    public String update(@PathVariable String id,
                         @ModelAttribute("chucVu")ChucVu chucVu){
        chucVuService.update(UUID.fromString(id),chucVu);
        return "redirect:/chuc-vu/hien-thi";

    }
}

