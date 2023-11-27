package com.example.duanxuong.Model;

import jakarta.persistence.*;
import lombok.*;

import java.util.UUID;

@Entity
@Table(name = "Phong")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Phong {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;
    @ManyToOne
    @JoinColumn(name = "IdTang")
    private Tang tang;
    @Column(name = "ma")
    private String ma;
    @Column(name = "ten")
    private String ten;
    @Column(name = "loaiPhong")
    private String loaiPhong;
    @Column(name = "soChoNgoi")
    private Integer soChoNgoi;
    @Column(name = "trangThai")
    private Integer trangThai;
}
