package com.educandoweb.course.config;

import com.educandoweb.course.entities.User;
import com.educandoweb.course.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

import java.util.Arrays;

@Configuration
@Profile("test") // Classe de configuração do perfil Test
// Usaremos ela para popular o BD
public class TestConfig implements CommandLineRunner {

    @Autowired // Injeção de dependência
    private UserRepository userRepository;

    // Tudo dentro de run é executado quando a aplicação é iniciada
    @Override
    public void run(String... args) throws Exception {

        // Seeding/População do BD
        User u1 = new User(null, "Maria Brown", "maria@gmail.com", "988888888", "123456");
        User u2 = new User(null, "Alex Green", "alex@gmail.com", "977777777", "123456");

        userRepository.saveAll(Arrays.asList(u1, u2));
    }
}