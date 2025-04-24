package com.springboot.backend.andres.userapp.users_backend.services;

import com.springboot.backend.andres.userapp.users_backend.entities.User;

import java.util.List;
import java.util.Optional;

public interface UserServices {

    List<User> findAll();

    Optional<User> findById(Long id);

    User save(User user);

    void deleteById(Long id);
}
