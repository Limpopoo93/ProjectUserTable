package project.table.service.impl;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import project.table.repository.UserRepository;
import project.table.service.UserService;
import project.table.view.User;

import javax.transaction.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    @Transactional
    @Override
    public User save(User user) {
        return userRepository.save(user);
    }

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public User findById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    @Transactional
    @Override
    public User saveAndFlush(User user) {
        return userRepository.saveAndFlush(user);
    }
}
