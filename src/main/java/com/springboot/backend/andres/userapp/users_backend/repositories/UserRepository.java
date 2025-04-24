package com.springboot.backend.andres.userapp.users_backend.repositories;

import com.springboot.backend.andres.userapp.users_backend.entities.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {

}
