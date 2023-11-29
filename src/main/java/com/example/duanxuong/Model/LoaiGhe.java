package com.example.duanxuong.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Table(name = "loaighe")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class LoaiGhe {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private UUID id;
    @Column(name = "maloaighe")
    private String maloaighe;
    @Column(name = "tenloai")
    private String tenloai;
    @Column(name = "gia")
    private Integer gia;
    @Column(name = "trangthai")
    private Boolean trangthai;
}
