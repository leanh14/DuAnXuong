package com.example.bailam.Controller;

import com.example.bailam.model.LoaiGhe;
import com.example.bailam.model.Phim;
import com.example.bailam.service.PhimService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/phim")
public class PhimController {
    @Autowired
    PhimService phimService;

    @GetMapping("/hien-thi")
    public String getAllPhim(
            Model model,
            @RequestParam(defaultValue = "0", name = "page") Integer pageNum,
            @RequestParam(name = "ten", required = false) String ten) {

        // Xử lý phân trang
        Page<Phim> pagephim = phimService.phanTrangPhim(pageNum, 2);
        model.addAttribute("listphim", pagephim);
        model.addAttribute("phim", new Phim());
        return "phim/trangchuphim";
    }

    @GetMapping("/delete/{id}")
    public String delete(Model model, @PathVariable String id) {
        phimService.delete(UUID.fromString(id));
        return "redirect:/phim/hien-thi";
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable String id, Model model) {
        Phim phim = phimService.detail(UUID.fromString(id));
        model.addAttribute("phim", phim);
        return "/phim/detail";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable String id,@Validated @ModelAttribute("phim") Phim p,BindingResult result,@RequestParam("hinhanhFile") MultipartFile file) {
        if (file != null && !file.isEmpty()) {
            try {
                // Lưu trữ file và lấy đường dẫn
                String filePath = saveUploadedFile(file);
                p.setHinhanh(filePath);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if(result.hasErrors()){
            return "phim/dedetail";
        }
        phimService.updatePhim(UUID.fromString(id), p);
        return "redirect:/phim/hien-thi";
    }

    @PostMapping("/add")
    public String add(@Validated @ModelAttribute("phim") Phim p, BindingResult result, @RequestParam("hinhanhFile") MultipartFile file) {
        if (file != null && !file.isEmpty()) {
            try {
                // Lưu trữ file và lấy đường dẫn
                String filePath = saveUploadedFile(file);
                p.setHinhanh(filePath);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        // Tiếp tục xử lý thông tin phim và lưu vào cơ sở dữ liệu
        if(result.hasErrors()){
            return "phim/themphim";
        }
        phimService.add(p);
        return "redirect:/phim/hien-thi";
    }

    private String saveUploadedFile(MultipartFile file) throws IOException {
        // Thực hiện lưu trữ file và trả về đường dẫn
        byte[] bytes = file.getBytes();
        String uploadDir = "images/";
        String fileName = file.getOriginalFilename();
        String filePath = uploadDir + fileName;

        java.nio.file.Path path = Paths.get(filePath);
        Files.write(path, bytes);

        return filePath;
    }


    @GetMapping("/trang-them")
    public String ht(@ModelAttribute("phim") Phim phim) {
        return "phim/themphim";
    }

    @GetMapping("/tim-kiem")
    public String searchByName(Model model,
                               @RequestParam(defaultValue = "0", name = "page") Integer pageNum,
                               @RequestParam(name = "ten", required = false) String ten) {
        Page<Phim> pagephim;
        if (ten != null && !ten.isEmpty()) {
            pagephim = phimService.searchByTenPaged(ten, pageNum, 2);
        } else {
            pagephim = phimService.phanTrangPhim(pageNum, 2);
        }
        model.addAttribute("listphim", pagephim);
        return "phim/trangchuphim";
    }
}
