package com.example.dslearn.pk;

import com.example.dslearn.entities.Offer;
import com.example.dslearn.entities.User;

import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.io.Serializable;

@Embeddable
public class EnrollmentPk implements Serializable {

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;

    public EnrollmentPk(){}

    public EnrollmentPk(User user, Offer offer) {
        this.user = user;
        this.offer = offer;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EnrollmentPk that = (EnrollmentPk) o;

        if (!user.equals(that.user)) return false;
        return offer.equals(that.offer);
    }

    @Override
    public int hashCode() {
        int result = user.hashCode();
        result = 31 * result + offer.hashCode();
        return result;
    }
}
