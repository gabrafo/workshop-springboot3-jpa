package com.educandoweb.course.repositories;

import com.educandoweb.course.entities.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// Interface que utiliza métodos do JPARepository para facilitar operações nos dados
// Já vem com implementação padrão, então não é preciso implementarmos!
@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
}
