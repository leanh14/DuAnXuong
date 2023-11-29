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
        model.addAttribute("listTang", tangService.getAll());
        model.addAttribute("phong", new Phong());
        return "indexPhong";
    }

    @RequestMapping(value="/add", method=RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String add(@ModelAttribute("phong") Phong phong){
        phongService.add(phong);
        return "{ status: \"success\" }";
    }

    @PostMapping("/update/{id}")
    public String update(@ModelAttribute("phong") Phong phong, @PathVariable("id") String id){
        phongService.update(UUID.fromString(id),phong);
        return "redirect:/phong/hien-thi";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id")String id, Model model){
        model.addAttribute("phong", phongService.detail(UUID.fromString(id)));
        return "detailPhong";
    }


}
