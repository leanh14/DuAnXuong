package com.example.duanxuong.Model;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;
import java.util.UUID;

@Table(name = "xuatchieuphim")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class XuatChieu {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "IdRap")
    private Rap rap;

    @ManyToOne
    @JoinColumn(name = "IdPhim")
    private Phim phim;

    @ManyToOne
    @JoinColumn(name = "IdPhong")
    private Phong phong;

    @ManyToOne
    @JoinColumn(name = "IdTang")
    private Tang tang;

    private Date ngayChieu;
      private Float gia;
      private String ma;
      private Integer soluong;
      private Integer trangThai;
}
