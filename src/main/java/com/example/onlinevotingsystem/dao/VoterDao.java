package com.example.onlinevotingsystem.dao;

import com.example.onlinevotingsystem.model.Voter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

public class VoterDao {
    Connection con = null;


    public VoterDao(){
        con= db.getConnection();
    }


    public static int getRandomNumberInt() {

        Random rnd = new Random();
        int number = rnd.nextInt(99999);


    return number;
    }

    public void registration(Voter v) throws ClassNotFoundException{
        String sql = "insert into voter (idVoter,Name, citizen_id,phone,pic) values(?,?,?,?,?)";

        try{
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1,getRandomNumberInt());
            pst.setString(2, v.getFullName());
            pst.setFloat(3, v.getCitizenshipNumber());
            pst.setFloat(4, v.getPhoneNumber());
            pst.setBlob(5, v.getProfilePic());
            pst.executeQuery();
        }
        catch(SQLException e){
            e.printStackTrace();
            System.out.println(e);

        }


    }

    public boolean login(Float voterID, Float phone){

        boolean x = false;
        //for login
        String sql = "Select idVoter, phone from votingsystem.voter where idVoter=? and phone=?";


        try {

            PreparedStatement pst = con.prepareStatement(sql);
            pst.setFloat(1, voterID);
            pst.setFloat(2, phone);


            ResultSet rs = pst.executeQuery();


            while(rs.next()) {
                int db_id=rs.getInt("idVoter");
                int db_phone=rs.getInt("phone");


                if(voterID==db_id&&db_phone==db_phone) {
                    x=true;
                    return x;
                }else {
                    return false;
                }
            }


        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        return x;


    }




}
