package chatter;
import java.io.*;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.*;


public class Input implements Serializable {
    public inputType type;
    private String text;
    private ArrayList<String> userlist = new ArrayList<String>(Arrays.asList("London", "Tokyo", "New York"));


    public enum inputType {
        FILE, IMAGE, TEXT, USERLIST
    }

    public void setType(inputType type){
        this.type = type;
    }
    public inputType getType() {
        return type;
    }

    public String getString() {
        return text;
    }
    public ArrayList<String> getUserlist(){
        return userlist;
    }

    public void setUserlist(ArrayList<String> userlist){
        userlist.add("userlist is null");
        if(userlist!=null){
        this.userlist = userlist;}
    }
    public void setString(String msg) {
        this.text = msg;
    }
}
