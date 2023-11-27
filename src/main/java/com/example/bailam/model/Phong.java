package com.example.bailam.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Table(name = "Phong")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Phong {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private UUID id;
    @NotBlank(message = "Không được để trống")
    @Column(name = "ma")
    private String ma;
    @NotBlank(message = "Không được để trống")
    @Column(name = "ten")
    private String ten;

}
