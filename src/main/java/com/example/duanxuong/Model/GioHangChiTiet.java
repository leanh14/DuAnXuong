package com.example.duanxuong.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Table(name = "giohangchitiet")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class GioHangChiTiet {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
     private UUID  id;
    @ManyToOne(fetch =  FetchType.LAZY)
    @JoinColumn(name = "idsanpham", referencedColumnName = "id")
    private XuatChieu xuatchieu;
    private Integer soluong;
    private Double  gia;
}
