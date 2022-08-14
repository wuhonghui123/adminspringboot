package cn.edu.guet.weappdemo.bean;

import java.util.Objects;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/24/23:49
 */
public class Address {
    private String id;
    private String name;
    private String phone;
    private String address;
    private String user_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Address address1 = (Address) o;
        return Objects.equals(id, address1.id) && Objects.equals(name, address1.name) && Objects.equals(phone, address1.phone) && Objects.equals(address, address1.address) && Objects.equals(user_id, address1.user_id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, phone, address, user_id);
    }

    @Override
    public String toString() {
        return "Address{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", user_id='" + user_id + '\'' +
                '}';
    }
}
