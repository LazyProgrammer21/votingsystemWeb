package com.example.onlinevotingsystem.model;

import java.sql.Blob;

public class Voter {
    private String Name;
    private int citizenhipNumber;
    private int PhoneNumber;
    private Blob faceData;


    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public int getCitizenhipNumber() {
        return citizenhipNumber;
    }

    public void setCitizenhipNumber(int citizenhipNumber) {
        this.citizenhipNumber = citizenhipNumber;
    }

    public int getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        PhoneNumber = phoneNumber;
    }

    public Blob getFaceData() {
        return faceData;
    }

    public void setFaceData(Blob faceData) {
        this.faceData = faceData;
    }

    public Voter(String name, int citizenhipNumber, int phoneNumber, Blob faceData) {
        Name = name;
        this.citizenhipNumber = citizenhipNumber;
        PhoneNumber = phoneNumber;
        this.faceData = faceData;
    }

    public Voter() {
    }

    @Override
    public String toString() {
        return "Voter{" +
                "Name='" + Name + '\'' +
                ", citizenhipNumber=" + citizenhipNumber +
                ", PhoneNumber=" + PhoneNumber +
                ", faceData=" + faceData +
                '}';
    }
}
