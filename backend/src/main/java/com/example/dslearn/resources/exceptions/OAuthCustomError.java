package com.example.dslearn.resources.exceptions;

import org.codehaus.jackson.annotate.JsonProperty;

import java.io.Serializable;

public class OAuthCustomError implements Serializable {

    private String error;

    @JsonProperty(value = "erro_description")
    private String erroDescription;

    public OAuthCustomError(){}

    public OAuthCustomError(String error, String erroDescription) {
        this.error = error;
        this.erroDescription = erroDescription;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getErroDescription() {
        return erroDescription;
    }

    public void setErroDescription(String erroDescription) {
        this.erroDescription = erroDescription;
    }
}
