package project.table.view;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;
import java.util.Collection;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "m_user")
public class User extends BaseEntity{
    @Column(name = "user_name")
    @Size(min = 1, message = "email not valid")
    private String username;

    @Column(name = "first_name")
    @Size(min = 1, message = "name not valid")
    private String firstName;

    @Column(name = "email")
    @Size(min = 1, message = "email not valid")
    @Email(message = "not valid for email")
    private String email;

    @Column(name = "password")
    @Size(min = 1, message = "password not valid")
    private String password;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "m_user_role",
            joinColumns = {@JoinColumn(name = "id_user", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "id_role", referencedColumnName = "id")})
    private List<Role> roles;

}
