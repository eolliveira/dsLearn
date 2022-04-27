package com.example.dslearn.services;

import com.example.dslearn.dto.DeliverRevisionDTO;
import com.example.dslearn.entities.Deliver;
import com.example.dslearn.repositories.DeliverRepository;
import com.example.dslearn.services.excepions.ResourcesNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
public class DeliverService {

    @Autowired
    private DeliverRepository repository;

    @PreAuthorize("hasAnyRole('ADMIN','INSTRUCTOR')")
    @Transactional
    public void SaveRevision(Long id, DeliverRevisionDTO dto){
        Optional<Deliver> opt = repository.findById(id);
        Deliver revision = opt.orElseThrow(() -> new ResourcesNotFoundException("Deliver id: " + id + " not found"));
        revision.setStatus(dto.getStatus());
        revision.setFeedback(dto.getFeedback());
        revision.setCorrectCount(dto.getCorrectCount());
        repository.save(revision);
    }

}
