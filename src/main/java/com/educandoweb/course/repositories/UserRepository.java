package com.educandoweb.course.repositories;

import com.educandoweb.course.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

// Interface que utiliza métodos do JPARepository para facilitar operações nos dados
// Já vem com implementação padrão, então não é preciso implementarmos!
public interface UserRepository extends JpaRepository<User, Long> {
}
