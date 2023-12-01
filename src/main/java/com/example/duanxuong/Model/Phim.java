package com.example.duanxuong.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;
@Table(name = "Phim")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Phim {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id")
    private UUID id;
//    @NotBlank(message = "Không được để trống")
    @Column(name = "ma")
    private String ma;
//    @NotBlank(message = "Không được để trống")
    @Column(name = "ten")
    private String ten;
//    @NotBlank(message = "Không được để trống")
    @Column(name = "daodien")
    private String daodien;
//    @NotBlank(message = "Không được để trống")
    @Column(name = "dienvien")
    private String dienvien;
    @Column(name = "theloai")
    private String theloai;
//    @NotBlank(message = "Không được để trống")
    @Column(name = "thoigian")
    private String thoigian;
    @Column(name = "hinhanh")
    private String hinhanh;
    @Transient
    private MultipartFile hinhanhFile;
    @Column(name = "noidung")
    private String noidung;
    @Column(name = "namsx")
    private String namsx;
}
