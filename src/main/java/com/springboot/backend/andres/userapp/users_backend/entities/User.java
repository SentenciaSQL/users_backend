package com.springboot.backend.andres.userapp.users_backend.entities;

import jakarta.persistence.*;
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
    private String name;

    @Column(length = 45)
    private String lastname;

    @Column(length = 70, unique = true)
    private String email;

    @Column(length = 45, unique = true)
    private String username;

    private String password;

}
