package com.example.duanxuong.Model;

import jakarta.persistence.*;
import lombok.*;

import java.util.UUID;

@Table(name = "thethanhvien")
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class TheThanhVien {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "loai")
    private Boolean loai;
}
