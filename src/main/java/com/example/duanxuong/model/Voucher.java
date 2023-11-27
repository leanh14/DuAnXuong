package com.example.duanxuong.model;

import jakarta.persistence.*;
import lombok.*;

import java.sql.Date;
import java.util.UUID;

@Table(name = "Voucher")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Data
public class Voucher {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "IdVeXemPhim")
    private VeXemPhim veXemPhim;

//    @Column(name = "ma")
    private String ma;

//    @Column(name = "tenVoucher")
    private String tenVoucher;

//    @Column(name = "NgayBatDau")
    private Date ngayBatDau;

//    @Column(name = "NgayKetThuc")
    private Date ngayKetThuc;
}
