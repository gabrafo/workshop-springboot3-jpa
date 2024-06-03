package com.educandoweb.course.repositories;

import com.educandoweb.course.entities.OrderItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// Interface que utiliza métodos do JPARepository para facilitar operações nos dados
// Já vem com implementação padrão, então não é preciso implementarmos!
@Repository
public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {
}
