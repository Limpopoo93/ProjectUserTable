package project.table.service;

import org.springframework.security.core.userdetails.UserDetails;
import project.table.view.User;

import java.util.List;

public interface UserService {
    User save(User user);

    List<User> findAll();

    User findById(Long id);

    User saveAndFlush(User user);

    User findByUsername(String login);

    UserDetails loadUserByUsername(String username);
}
