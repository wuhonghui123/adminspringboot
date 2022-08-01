package cn.edu.guet.weappdemo.bean;

import java.util.Objects;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/24/23:30
 */
public class OrderFood {
    private String order_id;
    private String food_id;
    private String food_name;
    private String food_num;
    private String food_price;

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getFood_id() {
        return food_id;
    }

    public void setFood_id(String food_id) {
        this.food_id = food_id;
    }

    public String getFood_name() {
        return food_name;
    }

    public void setFood_name(String food_name) {
        this.food_name = food_name;
    }

    public String getFood_num() {
        return food_num;
    }

    public void setFood_num(String food_num) {
        this.food_num = food_num;
    }

    public String getFood_price() {
        return food_price;
    }

    public void setFood_price(String food_price) {
        this.food_price = food_price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderFood orderFood = (OrderFood) o;
        return Objects.equals(order_id, orderFood.order_id) && Objects.equals(food_id, orderFood.food_id) && Objects.equals(food_name, orderFood.food_name) && Objects.equals(food_num, orderFood.food_num) && Objects.equals(food_price, orderFood.food_price);
    }

    @Override
    public int hashCode() {
        return Objects.hash(order_id, food_id, food_name, food_num, food_price);
    }

    @Override
    public String toString() {
        return "OrderFood{" +
                "order_id='" + order_id + '\'' +
                ", food_id='" + food_id + '\'' +
                ", food_name='" + food_name + '\'' +
                ", food_num='" + food_num + '\'' +
                ", food_price='" + food_price + '\'' +
                '}';
    }
}
