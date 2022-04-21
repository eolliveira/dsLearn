package com.example.dslearn.services;

import com.example.dslearn.dto.UserDTO;
import com.example.dslearn.entities.User;
import com.example.dslearn.repositories.UserRepository;
import com.example.dslearn.services.excepions.ResourcesNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
public class UserService {
    @Autowired
    private UserRepository repository;

    @Transactional
    public UserDTO findById(Long id){
        Optional<User> opt = repository.findById(id);
        User user = opt.orElseThrow(() -> new ResourcesNotFoundException("Entity id: " + id + " not found"));
        return new UserDTO(user);
    }

}
