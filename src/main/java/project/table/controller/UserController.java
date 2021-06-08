package project.table.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import project.table.service.RoleService;
import project.table.service.UserService;
import project.table.view.CheckBox;
import project.table.view.Role;
import project.table.view.Status;
import project.table.view.User;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final RoleService roleService;

    @GetMapping("/")
    public String main(Model model) {
        return "main";
    }

    @GetMapping("/registration")
    public String registration(User user) {
        return "registrationUser";
    }


    @GetMapping("/comeIn")
    public String comeIn(User user) {
        return "comeInUser";
    }

    @PostMapping("save")
    public String save(User user, Model model, HttpSession session) {
        User userSearch = userService.findByUsername(user.getUsername());
        if (userSearch != null) {
            return "registrationUser";
        }
        Role roleUser = roleService.findByName("ROLE_USER");
        List<Role> userRoles = new ArrayList<>();
        userRoles.add(roleUser);
        user.setRoles(userRoles);
        user.setCreated(new Date());
        user.setUpdated(new Date());
        user.setStatus(Status.UNBLOCK);
        userService.save(user);
        session.setAttribute("user", user);
        List<User> users = userService.findAll();
        List<CheckBox> checkBoxes = Collections.singletonList(new CheckBox());
        model.addAttribute("checkBoxes", checkBoxes);
        model.addAttribute("users", users);
        return "index";
    }

    @PostMapping("login")
    public String login(User user, Model model, HttpSession session) {
        User userSearch = userService.findByUsername(user.getUsername());
        if (userSearch == null) {
            return "comeInUser";
        }
        if (!userSearch.getPassword().equals(user.getPassword())) {
            return "comeInUser";
        }
        userSearch.setUpdated(new Date());
        userService.saveAndFlush(userSearch);
        List<User> users = userService.findAll();
        List<CheckBox> checkBoxes = Collections.singletonList(new CheckBox());
        session.setAttribute("user", user);
        model.addAttribute("users", users);
        return "index";
    }


}
