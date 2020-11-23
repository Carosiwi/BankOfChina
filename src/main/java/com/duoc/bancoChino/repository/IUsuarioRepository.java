package com.duoc.bancoChino.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duoc.bancoChino.model.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {

	Usuario findByUser(String user);
}
