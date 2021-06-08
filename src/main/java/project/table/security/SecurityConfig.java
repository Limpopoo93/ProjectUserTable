package project.table.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .httpBasic().disable()
                .csrf().disable()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeRequests()
                .antMatchers("/registration").not().fullyAuthenticated()
                .antMatchers("/comeIn").not().fullyAuthenticated()
                .antMatchers("/main").not().fullyAuthenticated()
                .antMatchers("/login").not().fullyAuthenticated()
                //.antMatchers("/registration").permitAll()
                //.antMatchers("/comeIn").permitAll()
                //.antMatchers("/main").permitAll()
                //.antMatchers("/login").permitAll()
                .antMatchers("/index").hasRole("USER")
                .antMatchers("/").permitAll()
                .anyRequest().authenticated();
    }
}