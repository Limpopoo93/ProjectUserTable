package project.table.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import project.table.exeption.EntityNotFoundException;
import project.table.security.JwtUserDetailsService;
import project.table.service.RoleService;
import project.table.service.UserService;
import project.table.view.Role;
import project.table.view.Status;
import project.table.view.User;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static project.table.exeption.ErrorConstant.*;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final RoleService roleService;
    private final JwtUserDetailsService jwtUserDetailsService;

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

    @PostMapping("/registration")
    public String save(@Valid User user, BindingResult bindingResult, Model model, HttpSession session) {
        if (bindingResult.hasErrors()) {
            return "registrationUser";
        }
        User userSearch = userService.findByUsername(user.getUsername());
        if (userSearch != null) {
            throw new EntityNotFoundException(USER_BUSY);
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
        model.addAttribute("users", users);
        return "index";
    }

    @PostMapping("/comeInUser")
    public String login(@Valid User user, BindingResult bindingResult, Model model, HttpSession session) {
        if (bindingResult.hasErrors()) {
            return "comeInUser";
        }
        User userSearch = userService.findByUsername(user.getUsername());
        if (userSearch == null) {
            throw new EntityNotFoundException(USER_EMPTY);
        }
        if (!userSearch.getPassword().equals(user.getPassword())) {
            throw new EntityNotFoundException(LOGIN_PASSWORD_NOT_WALID);
        }
        if (userSearch.getStatus().equals(Status.BLOCK) || userSearch.getStatus().equals(Status.DELETE)) {
            throw new EntityNotFoundException(ERROR);
        }
        userSearch.setUpdated(new Date());
        userService.saveAndFlush(userSearch);
        UserDetails userDetails = jwtUserDetailsService.loadUserByUsername(user.getUsername());
        List<User> users = userService.findAll();
        session.setAttribute("userSearch", userSearch);
        model.addAttribute("userDetails", userDetails);
        model.addAttribute("users", users);
        return "index";
    }

    @PostMapping("/settingUser")
    public String settingUser(@RequestParam String param, @RequestParam String list, HttpSession session, Model model) {
        int[] numArr = Arrays.stream(list.split(",")).mapToInt(Integer::parseInt).toArray();
        String status = "";
        if (param.equals("block")) {
            status = "BLOCK";
        }
        if (param.equals("unBlock")) {
            status = "UNBLOCK";
        }
        if (param.equals("delete")) {
            status = "DELETE";
        }
        Boolean check = false;
        User userSession = (User) session.getAttribute("userSearch");
        for (int i = 0; i < numArr.length; i++) {
            Long id = (long) numArr[i];
            User user = userService.findById(id);
            if (userSession.getId().equals(user.getId())) {
                check = true;
            }
            user.setStatus(Status.valueOf(status));
            userService.saveAndFlush(user);
        }
        if (check) {
            session.invalidate();
            return "main";
        }
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "index";
    }
}
