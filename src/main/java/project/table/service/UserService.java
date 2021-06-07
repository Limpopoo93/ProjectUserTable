package project.table.service;

import project.table.view.User;

import java.util.List;

public interface UserService {
    User save(User user);

    List<User> findAll();

    User findById(Long id);

    User saveAndFlush(User user);
}
