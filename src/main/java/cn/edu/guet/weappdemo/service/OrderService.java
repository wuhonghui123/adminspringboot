package cn.edu.guet.weappdemo.service;

import cn.edu.guet.weappdemo.bean.Order;
import cn.edu.guet.weappdemo.bean.OrderFood;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderService {
    List<Order> getOrderList(String id,String user_id,String order_type,String pay_type,String create_time);
    List<Order> selectOrder(String user_id);
    int addOrder(Order order);
    int deleteOrder(String id,String pay_type);
    List<OrderFood> searchOrder(String order_id);
}
