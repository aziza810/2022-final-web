package com.example.marketPlace.repositories;

import com.example.marketPlace.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
     List<Product> findByTitle(String title);
}
