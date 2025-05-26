package com.springboot.backend.andres.userapp.users_backend.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.springboot.backend.andres.userapp.users_backend.models.IUser;
import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "users")
public class User implements IUser {

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

    @Transient
//    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private boolean admin;

    @JsonIgnoreProperties({"handler", "hibernateLazyInitializer"})
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "users_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"),
            uniqueConstraints = @UniqueConstraint(columnNames = {"user_id", "role_id"}))
    private List<Role> roles;

    public User() {
        this.roles = new ArrayList<>();
    }

}
