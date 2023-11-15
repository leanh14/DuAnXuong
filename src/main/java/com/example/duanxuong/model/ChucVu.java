package com.example.duanxuong.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.UUID;

@Table(name = "ChucVu")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class ChucVu {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    private String ma;
    private String ten;
}
