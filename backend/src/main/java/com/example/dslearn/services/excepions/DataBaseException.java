package com.example.dslearn.services.excepions;
public class DataBaseException extends RuntimeException {
    public DataBaseException(String message) {
        super(message);
    }
}