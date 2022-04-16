package com.example.dslearn.entities;

import javax.persistence.Column;
import java.time.Instant;

public class Task extends Lesson{

    private String description;
    private Integer questionCount;
    private Integer approvalCount;
    private Double weigth;
    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant dueDate;

}
