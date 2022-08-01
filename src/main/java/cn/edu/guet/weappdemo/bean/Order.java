package cn.edu.guet.weappdemo.bean;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/24/23:30
 */
public class Order {
    private String id;
    private String order_type;
    private String store_id;
    private String user_id;
    private String pay_type;
    private String consume_type;
    private String table;
    private int payment_status;
    private java.sql.Timestamp create_time;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrder_type() {
        return order_type;
    }

    public void setOrder_type(String order_type) {
        this.order_type = order_type;
    }

    public String getStore_id() {
        return store_id;
    }

    public void setStore_id(String store_id) {
        this.store_id = store_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getPay_type() {
        return pay_type;
    }

    public void setPay_type(String pay_type) {
        this.pay_type = pay_type;
    }

    public String getConsume_type() {
        return consume_type;
    }

    public void setConsume_type(String consume_type) {
        this.consume_type = consume_type;
    }

    public String getTable() {
        return table;
    }

    public void setTable(String table) {
        this.table = table;
    }

    public int getPayment_status() {
        return payment_status;
    }

    public void setPayment_status(int payment_status) {
        this.payment_status = payment_status;
    }

    public Timestamp getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public Timestamp getFinal_time() {
        return final_time;
    }

    public void setFinal_time(Timestamp final_time) {
        this.final_time = final_time;
    }

    public double getOrder_price() {
        return order_price;
    }

    public void setOrder_price(double order_price) {
        this.order_price = order_price;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public List<Map<String, Object>> getFoodOrders() {
        return foodOrders;
    }

    public void setFoodOrders(List<Map<String, Object>> foodOrders) {
        this.foodOrders = foodOrders;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return payment_status == order.payment_status && Double.compare(order.order_price, order_price) == 0 && Objects.equals(id, order.id) && Objects.equals(order_type, order.order_type) && Objects.equals(store_id, order.store_id) && Objects.equals(user_id, order.user_id) && Objects.equals(pay_type, order.pay_type) && Objects.equals(consume_type, order.consume_type) && Objects.equals(table, order.table) && Objects.equals(create_time, order.create_time) && Objects.equals(final_time, order.final_time) && Objects.equals(remark, order.remark) && Objects.equals(foodOrders, order.foodOrders);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, order_type, store_id, user_id, pay_type, consume_type, table, payment_status, create_time, final_time, order_price, remark, foodOrders);
    }

    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", order_type='" + order_type + '\'' +
                ", store_id='" + store_id + '\'' +
                ", user_id='" + user_id + '\'' +
                ", pay_type='" + pay_type + '\'' +
                ", consume_type='" + consume_type + '\'' +
                ", table='" + table + '\'' +
                ", payment_status=" + payment_status +
                ", create_time=" + create_time +
                ", final_time=" + final_time +
                ", order_price=" + order_price +
                ", remark='" + remark + '\'' +
                ", foodOrders=" + foodOrders +
                '}';
    }

    private java.sql.Timestamp final_time;
    private double order_price;
    private String remark;
    private List<Map<String, Object>> foodOrders;
}
