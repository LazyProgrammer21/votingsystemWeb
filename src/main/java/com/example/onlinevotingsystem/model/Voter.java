package com.example.onlinevotingsystem.model;

import java.sql.Blob;

public class Voter {

    private String fullName;
    private Float phoneNumber;
    private Float citizenshipNumber;
    private Blob profilePic;

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Float getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Float phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Float getCitizenshipNumber() {
        return citizenshipNumber;
    }

    public void setCitizenshipNumber(Float citizenshipNumber) {
        this.citizenshipNumber = citizenshipNumber;
    }

    public Blob getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(Blob profilePic) {
        this.profilePic = profilePic;
    }

    public Voter(String fullName, Float phoneNumber, Float citizenshipNumber, Blob profilePic) {
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
