package com.example.duanxuong.Model;


import jakarta.persistence.*;
import lombok.*;

import java.util.UUID;

@Table(name = "khachhang")
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Data
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;


    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name="gioitinh")
    private int gioiTinh;

    @Column(name = "ngaysinh")
    private String ngaySinh;

    @Column(name = "sdt")
    private String sdt;

    @Column(name="diachi")
    private String diaChi;

    @Column(name = "thanhpho")
    private String thanhPho;

    @Column(name = "quocgia")
    private String quocGia;

    @Column(name = "taikhoan")
    private String taiKhoan;

    @Column(name = "matkhau")
    private String matKhau;

    @Column(name = "email")
    private  String email;
}
