package cn.edu.guet.weappdemo.bean;

import java.util.List;
import java.util.Map;

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
    private java.sql.Timestamp final_time;
    private double order_price;
    private String remark;
    private List<Map<String, Object>> foodOrders;
}
