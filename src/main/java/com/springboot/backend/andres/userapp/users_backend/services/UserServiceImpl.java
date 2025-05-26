package com.springboot.backend.andres.userapp.users_backend.services;

import com.springboot.backend.andres.userapp.users_backend.entities.Role;
import com.springboot.backend.andres.userapp.users_backend.entities.User;
import com.springboot.backend.andres.userapp.users_backend.models.IUser;
import com.springboot.backend.andres.userapp.users_backend.models.UserRequest;
import com.springboot.backend.andres.userapp.users_backend.repositories.RoleRepository;
import com.springboot.backend.andres.userapp.users_backend.repositories.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl implements UserServices {

    private final UserRepository repository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;

    public UserServiceImpl(UserRepository repository, RoleRepository roleRepository, PasswordEncoder passwordEncoder) {
        this.repository = repository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> findAll() {
        return ((List<User>) repository.findAll()).stream().peek(user -> {
            boolean admin = user.getRoles().stream().anyMatch(role -> role.getName().equals("ROLE_ADMIN"));
            user.setAdmin(admin);
        }).collect(Collectors.toList());
    }

    @Override
    @Transactional(readOnly = true)
    public Page<User> findAll(Pageable pageable) {
        return repository.findAll(pageable).map(user -> {
            boolean admin = user.getRoles().stream().anyMatch(role -> role.getName().equals("ROLE_ADMIN"));
            user.setAdmin(admin);
            return user;
        });
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<User> findById(Long id) {
        return repository.findById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<User> findByUsername(String username) {
        return repository.findByUsername(username);
    }

    @Override
    @Transactional
    public User save(User user) {
        user.setRoles(getRoles(user));
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return repository.save(user);
    }

    @Override
    @Transactional
    public Optional<User> update(UserRequest user, Long id) {
        Optional<User> userOptional = repository.findById(id);
        if (userOptional.isPresent()) {
            User userDb = userOptional.orElseThrow();
            userDb.setName(user.getName());
            userDb.setLastname(user.getLastname());
            userDb.setEmail(user.getEmail());
            userDb.setUsername(user.getUsername());

            List<Role> roles = getRoles(user);

            userDb.setRoles(roles);

            return Optional.of(repository.save(userDb));
        }
        return Optional.empty();
    }

    @Override
    @Transactional
    public void deleteById(Long id) {
        repository.deleteById(id);
    }

    private List<Role> getRoles(IUser user) {
        List<Role> roles = new ArrayList<>();
        Optional<Role> optionalRoleUser = roleRepository.findByName("ROLE_USER");
        optionalRoleUser.ifPresent(roles::add);

        if (user.isAdmin()) {
            Optional<Role> optionalRoleAdmin = roleRepository.findByName("ROLE_ADMIN");
            optionalRoleAdmin.ifPresent(roles::add);
        }
        return roles;
    }
}
