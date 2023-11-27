package com.example.duanxuong.controller;

import com.example.duanxuong.model.VeDat;
import com.example.duanxuong.repository.VeDatRepository;
import com.example.duanxuong.service.NhanVienService;
import com.example.duanxuong.service.VeDatService;
import com.example.duanxuong.service.VeXemPhimService;
import jakarta.websocket.server.PathParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/ve-dat")
public class VeDatController {
    @Autowired
    VeDatRepository veDatRepository;

    @Autowired
    VeDatService veDatService;

    @Autowired
    NhanVienService nhanVienService;
    @Autowired
    VeXemPhimService veXemPhimService;

    //hienthi
    @GetMapping("/hien-thi")
    public String getAll(Model model,
                         @RequestParam(value = "page",defaultValue = "0")int page){
        Integer size = 5;
        Pageable pageable = PageRequest.of(page,size);
        model.addAttribute("veDat",new VeDat());
        model.addAttribute("listVD",veDatRepository.findAll(pageable).getContent());
        model.addAttribute("totalPage",veDatRepository.findAll(pageable).getTotalElements());
        model.addAttribute("listVXP",veXemPhimService.getAll());
        model.addAttribute("listNV",nhanVienService.getAll());
        return "VeDatForm/trangChu";
    }
    ///detail
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable String id,Model model){
        VeDat veDat = veDatService.detail(UUID.fromString(id));
        model.addAttribute("veDat",veDat);
        model.addAttribute("listNV",nhanVienService.getAll());
        model.addAttribute("listVXP",veXemPhimService.getAll());
        return "VeDatForm/Update";
    }
    //delete
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable String id){
        veDatService.delete(UUID.fromString(id));
        return "redirect:/ve-dat/hien-thi";
    }
    //add
    @PostMapping("/add")
    public String add(@Validated @ModelAttribute("veDat")VeDat veDat){
        veDatService.add(veDat);
        return "redirect:/ve-dat/hien-thi";
    }
    //update
    @PostMapping("/update/{id}")
    public String update(@PathVariable String id,
                         @ModelAttribute("veDat")VeDat veDat){
        veDatService.update(UUID.fromString(id),veDat);
        return "redirect:/ve-dat/hien-thi";
    }


}
