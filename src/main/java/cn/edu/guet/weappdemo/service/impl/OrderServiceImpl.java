package cn.edu.guet.weappdemo.service.impl;

import cn.edu.guet.weappdemo.bean.Order;
import cn.edu.guet.weappdemo.bean.OrderFood;
import cn.edu.guet.weappdemo.mapper.OrderFoodMapper;
import cn.edu.guet.weappdemo.mapper.OrderMapper;
import cn.edu.guet.weappdemo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    //private OrderMapper orderMapper;
    private OrderFoodMapper orderFoodMapper;
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public List<Order> getOrderList(String id,String user_id,String order_type,String pay_type,String create_time) {
        return orderMapper.getOrderList(id,user_id,order_type,pay_type,create_time);
    }

    @Override
    public List<Order> selectOrder(String user_id) {
        return orderMapper.selectOrder(user_id);
    }

    @Override
    public int addOrder(Order order) {
        return orderMapper.addOrder(order);
    }

    @Override
    public int deleteOrder(String id) {
        return orderMapper.deleteOrder(id);
    }

    @Override
    public List<OrderFood> searchOrder(String order_id) {
        return orderFoodMapper.searchOrder(order_id);
    }


}
