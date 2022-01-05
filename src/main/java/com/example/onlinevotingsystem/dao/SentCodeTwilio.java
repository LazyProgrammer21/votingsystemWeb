package com.example.onlinevotingsystem.dao;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import java.util.Random;


public class SentCodeTwilio {

    public static final String Account_SID="ACbd90da3b88d527950bb4366e1a7e8c83";
    public static final String Auth_Token="956270ad39bb91886bc8703e1fa274e9";



    public static String getRandomNumberString() {
        // It will generate 4 digit random Number.
        // from 0 to 9999
        Random rnd = new Random();
        int number = rnd.nextInt(9999);

        // this will convert any number sequence into 6 character.
        return String.format("%06d", number);
    }
    public String sentOTP(long pnum) {

        String OTPcode= getRandomNumberString();
        Twilio.init(Account_SID, Auth_Token);
        Message message = Message.creator(
                new PhoneNumber(String.valueOf(pnum)),
                new PhoneNumber("+15306257548"),
                "Your code is"+OTPcode).create();

        System.out.println(message.getSid());

        return OTPcode;
    }

}
