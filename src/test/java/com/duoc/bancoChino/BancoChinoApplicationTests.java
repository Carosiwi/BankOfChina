package com.duoc.bancoChino;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.duoc.bancoChino.model.Usuario;
import com.duoc.bancoChino.repository.IUsuarioRepository;

@SpringBootTest
class BancoChinoApplicationTests {
	@Autowired
	private IUsuarioRepository repo;

	@Autowired
	private BCryptPasswordEncoder encoder;

	@Test
	void contextLoads() {
		Usuario u = new Usuario();
		u.setId(1);
		u.setUser("admin");
		u.setPass(encoder.encode("12345"));
		repo.save(u);

		Usuario u2 = new Usuario();
		u2.setId(2);
		u2.setUser("chiquitita");
		u2.setPass(encoder.encode("12345"));
		repo.save(u2);

	}

}
