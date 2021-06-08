package project.table.service;

import project.table.view.Role;

public interface RoleService {
    Role findByName(String name);
}
