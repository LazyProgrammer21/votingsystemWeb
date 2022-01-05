package com.example.onlinevotingsystem.model;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Blob;

public class Voter {

    private String fullName;
    private String phoneNumber;
    private String citizenshipNumber;
    private Blob profilePic;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCitizenshipNumber() {
        return citizenshipNumber;
    }

    public void setCitizenshipNumber(String citizenshipNumber) {
        this.citizenshipNumber = citizenshipNumber;
    }

    public Blob getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(Blob profilePic) {
        this.profilePic = profilePic;
    }

    public Voter(String fullName, String phoneNumber, String citizenshipNumber, Blob profilePic) {
        this.fullName = fullName;
        this.phoneNumber = phoneNumber;
        this.citizenshipNumber = citizenshipNumber;
        this.profilePic = profilePic;
    }

    public Voter() {
    }


    @Override
    public String toString() {
        return "Voter{" +
                "fullName='" + fullName + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", citizenshipNumber=" + citizenshipNumber +
                ", profilePic=" + profilePic +
                '}';
    }
}
