package backend;

import java.io.Serializable;

public class User implements Serializable{
    private String name;
    private String phone;
    private String type;
    private String state;

    public User(String name, String phone, String type, String state) {
        this.name = name;
        this.phone = phone;
        this.type = type;
        this.state = state;
    }
    
    public User() {
        this.name = "";
        this.phone = "";
        this.type = "";
        this.state = "";
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
    
}
