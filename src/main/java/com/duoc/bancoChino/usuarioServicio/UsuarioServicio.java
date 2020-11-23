package com.duoc.bancoChino.usuarioServicio;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.duoc.bancoChino.model.Usuario;
import com.duoc.bancoChino.repository.IUsuarioRepository;

@Service
public class UsuarioServicio implements UserDetailsService {
	@Autowired
	private IUsuarioRepository repo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Usuario u = repo.findByUser(username);
		ArrayList<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority("ADMIN"));

		UserDetails usetDT = new User(u.getUser(), u.getPass(), roles);
		return usetDT;

	}

}
