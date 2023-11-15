package com.example.duanxuong.model;


import jakarta.persistence.*;
import lombok.*;

import java.sql.Date;
import java.util.UUID;

@Table(name = "NhanVien")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Data
public class NhanVien {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "IdChucVu")
    private ChucVu chucVu;

    private String ma;
    private String hoTen;
    private Date ngaySinh;
    private Integer gioiTinh;

}
