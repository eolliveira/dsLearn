package com.example.dslearn.services;

import com.example.dslearn.entities.User;
import com.example.dslearn.repositories.UserRepository;
import com.example.dslearn.services.excepions.ForbiddenException;
import com.example.dslearn.services.excepions.UnauthorizedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    @Autowired
    private UserRepository repository;

    //obtem usuario autenticado
    private User authenticated() {
        try {
            String username = SecurityContextHolder.getContext().getAuthentication().getName();
            User user = repository.findByEmail(username);
            return user;
        }
        catch (Exception e) {
            throw new UnauthorizedException("Invalid User");
        }
    }

    public void validateSelfOrAdmin(Long userId){
        User authenticatedUser = authenticated();
        if(!authenticatedUser.getId().equals(userId) && !authenticatedUser.hasRole("ROLE_ADMIN")) {
            throw new ForbiddenException("Access Denied");
        }
    }
}
