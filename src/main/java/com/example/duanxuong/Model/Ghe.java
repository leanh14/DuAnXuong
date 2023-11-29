package com.example.duanxuong.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Table(name = "hangghe")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Ghe {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private UUID id;

    @ManyToOne(fetch =  FetchType.LAZY)
    @JoinColumn(name = "idloaighe", referencedColumnName = "id")
    private LoaiGhe loaiGhe;

    @ManyToOne(fetch =  FetchType.LAZY)
    @JoinColumn(name = "idphong", referencedColumnName = "id")
    private Phong phong;

    @Column(name = "ma")
    private String ma;

    @Column(name = "tenhangghe")
    private String tenhangghe;

    @Column(name = "tenghe")
    private String tenghe;
}
