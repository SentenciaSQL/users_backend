package com.springboot.backend.andres.userapp.users_backend.services;

import com.springboot.backend.andres.userapp.users_backend.entities.User;
import com.springboot.backend.andres.userapp.users_backend.models.UserRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Optional;

public interface UserServices {

    List<User> findAll();

    Page<User> findAll(Pageable pageable);

    Optional<User> findById(Long id);

    Optional<User> findByUsername(String username);

    User save(User user);

    Optional<User> update(UserRequest user, Long id);

    Long deleteById(Long id);
}
