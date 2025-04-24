package com.springboot.backend.andres.userapp.users_backend.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 45)
    @NotBlank
    private String name;

    @Column(length = 45)
    @NotBlank
    private String lastname;

    @Column(length = 70, unique = true)
    @NotEmpty
    @Email
    private String email;

    @Column(length = 45, unique = true)
    @NotBlank
    @Size(min = 4, max = 12)
    private String username;

    @NotBlank
    private String password;

}
