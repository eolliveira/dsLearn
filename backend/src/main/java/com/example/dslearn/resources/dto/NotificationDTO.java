package com.example.dslearn.resources.dto;

import com.example.dslearn.entities.Notification;

import java.io.Serializable;
import java.time.Instant;

public class NotificationDTO implements Serializable {

    private Long id;
    private String text;
    private Instant moment;
    private boolean read;
    private String route;
    private Long userlId;

    public NotificationDTO() {}

    public NotificationDTO(Notification entity) {
        this.id = entity.getId();
        this.text = entity.getText();
        this.moment = entity.getMoment();
        this.route = entity.getRoute();
        this.userlId = entity.getUser().getId();
    }

    public NotificationDTO(Long id, String text, Instant moment, boolean read, String route, Long userlId) {
        this.id = id;
        this.text = text;
        this.moment = moment;
        this.read = read;
        this.route = route;
        this.userlId = userlId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Instant getMoment() {
        return moment;
    }

    public void setMoment(Instant moment) {
        this.moment = moment;
    }

    public boolean isRead() {
        return read;
    }

    public void setRead(boolean read) {
        this.read = read;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    public Long getUserlId() {
        return userlId;
    }

    public void setUserlId(Long userlId) {
        this.userlId = userlId;
    }
}
