package com.example.duanxuong.controller;

import com.example.duanxuong.model.Voucher;
import com.example.duanxuong.repository.VoucherRepository;
import com.example.duanxuong.service.VeXemPhimService;
import com.example.duanxuong.service.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/voucher")
public class VoucherController {
    @Autowired
    VoucherRepository voucherRepository;
    @Autowired
    VoucherService voucherService;
    @Autowired
    VeXemPhimService veXemPhimService;

    @GetMapping("/hien-thi")
    public String getAll(Model model,
                         @RequestParam(value = "page",defaultValue = "0")int page){
        Integer size = 5;
        Pageable pageable = PageRequest.of(page,size);
        model.addAttribute("voucher",new Voucher());
        model.addAttribute("listVC",voucherRepository.findAll(pageable).getContent());
        model.addAttribute("totalPage",voucherRepository.findAll(pageable).getTotalElements());
        model.addAttribute("listVXP",veXemPhimService.getAll());
        return "VoucherForm/trangChu";

    }
    //detail
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable String id,Model model){
        Voucher voucher = voucherService.detail(UUID.fromString(id));
        model.addAttribute("voucher",voucher);
        model.addAttribute("listVXP",veXemPhimService.getAll());
        return "VoucherForm/Update";

    }
    //delete
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable String id){
        voucherService.delete(UUID.fromString(id));
        return "redirect:/voucher/hien-thi";
    }
    //add
    @PostMapping("/add")
    public String add(@Validated @ModelAttribute("voucher")Voucher voucher){
        voucherService.add(voucher);
        return "redirect:/voucher/hien-thi";
    }
//    @RequestMapping(value="/add", method=RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
//    @ResponseBody
//    public String add(@Validated @ModelAttribute("voucher")Voucher voucher){
//        voucherService.add(voucher);
//        return "{ status: \"success\" }";
//    }
    //update
    @PostMapping("/update/{id}")
    public String update(@PathVariable String id,
                         @ModelAttribute("voucher")Voucher voucher){
        voucherService.update(UUID.fromString(id),voucher);
        return "redirect:/voucher/hien-thi";
    }
    //tim kiem
    @GetMapping("/tim-kiem")
    public String search(@RequestParam(name = "ma",required = false)String ma,Model model){
        if(ma != null && ma.isEmpty()){
            List<Voucher> list = voucherService.searchByMa(ma);
            model.addAttribute("listVC",list);
        }else{
            //
            List<Voucher> list =  voucherService.getAll();
            model.addAttribute("listVC",list);
        }
        return "redirect:/voucher/hien-thi";
    }
}
