package com.example.onlinevotingsystem.service;

import com.example.onlinevotingsystem.db.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class NoticeServiceImpl implements noticeService{

    Connection con=null;
    public NoticeServiceImpl(){
         con = db.getConnection();
    }


    @Override
    public boolean FetchAllNotices() {
        String sql = "select * from votingsystem.notice";

        try{
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()){

            }
        }catch(SQLException e){
            e.printStackTrace();
        }

        return false;
    }
}
