package com.example.dslearn.services;

import com.example.dslearn.dto.UserDTO;
import com.example.dslearn.entities.User;
import com.example.dslearn.repositories.UserRepository;
import com.example.dslearn.services.excepions.ResourcesNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepository repository;

    @Autowired
    private AuthService authService;

    private static Logger logger = LoggerFactory.getLogger(UserService.class);

    @Transactional
    public UserDTO findById(Long id){
        authService.validateSelfOrAdmin(id);
        Optional<User> opt = repository.findById(id);
        User user = opt.orElseThrow(() -> new ResourcesNotFoundException("Resource id: " + id + " not found"));
        return new UserDTO(user);
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = repository.findByEmail(email);
        if (user == null) {
            logger.error("User not found: " + email);
            throw new UsernameNotFoundException("Email not found");
        }
        logger.info("User found: " + email);
        return user;
    }
}
