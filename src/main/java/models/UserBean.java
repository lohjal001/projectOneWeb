package models;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class UserBean implements Serializable {
    List<String[]> data = null;
    public UserBean(){}

    public LinkedList getData() {
        return (LinkedList) this.data;
    }

    public void setData(LinkedList data) {
        this.data = data;
    }
}
