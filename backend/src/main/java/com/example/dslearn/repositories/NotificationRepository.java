package com.example.dslearn.repositories;

import com.example.dslearn.entities.Notification;
import com.example.dslearn.entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {

    @Query("SELECT obj FROM Notification obj " +
            "WHERE (:user IN obj.user) " +
            "AND (obj.read = FALSE OR :unreadOnly = FALSE) " +
            "ORDER BY obj.moment DESC")
    Page<Notification> notificationsForCurrentUser(User user,Boolean unreadOnly, Pageable pageable);
}
