package cn.edu.guet.weappdemo.bean;

import java.util.Objects;

public class OrderUser {
    private String order_id;
    private String user_id;
    private String user_name;
    private String user_phone;
    private String user_address;


    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_address() {
        return user_address;
    }

    public void setUser_address(String user_address) {
        this.user_address = user_address;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderUser orderUser = (OrderUser) o;
        return Objects.equals(user_id, orderUser.user_id) && Objects.equals(user_name, orderUser.user_name) && Objects.equals(user_phone, orderUser.user_phone) && Objects.equals(user_address, orderUser.user_address);
    }

    @Override
    public int hashCode() {
        return Objects.hash(user_id, user_name, user_phone, user_address);
    }

    @Override
    public String toString() {
        return "OrderUser{" +
                "user_id='" + user_id + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_phone='" + user_phone + '\'' +
                ", user_address='" + user_address + '\'' +
                '}';
    }
}
