package project.table.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.table.repository.RoleRepository;
import project.table.service.RoleService;
import project.table.view.Role;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleRepository repository;

    @Override
    public Role findByName(String name) {
        return repository.findByName(name);
    }
}
