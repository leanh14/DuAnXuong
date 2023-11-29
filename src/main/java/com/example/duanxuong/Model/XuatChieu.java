package com.example.duanxuong.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Table(name = "xuatchieuphim")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class XuatChieu {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
      private UUID id;
      private Double gia;
      private String ma;
      private Integer soluong;
}
