package com.duoc.bancoChino.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duoc.bancoChino.model.Cliente;

public interface IClienteRepository extends JpaRepository<Cliente, Integer> {

	List<Cliente> findByRut(int rut);

}
