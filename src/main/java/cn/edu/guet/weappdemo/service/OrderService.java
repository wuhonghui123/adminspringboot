package cn.edu.guet.weappdemo.service;

import cn.edu.guet.weappdemo.bean.Order;
import cn.edu.guet.weappdemo.bean.OrderFood;
import cn.edu.guet.weappdemo.bean.OrderUser;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface OrderService {
    List<Order> getOrderList(String id,String user_id,String order_type,String pay_type,String create_time);
    List<Order> selectOrder(String user_id);
    int addOrder(Order order);
    int deleteOrder(String id);
    List<OrderFood> searchOrder(String order_id);
    List<OrderUser> orderUserList(String order_id,String user_id);
}
