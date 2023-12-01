package com.example.duanxuong.Model;

import jakarta.persistence.*;
import jdk.jfr.Enabled;
import lombok.*;

import java.util.UUID;

@Table(name = "VeXemPhim")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class VeXemPhim {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    private String ma;
    private String tenPhim;
}
