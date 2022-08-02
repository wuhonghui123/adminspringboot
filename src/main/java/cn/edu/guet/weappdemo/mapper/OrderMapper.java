package cn.edu.guet.weappdemo.mapper;

import cn.edu.guet.weappdemo.bean.Order;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/26/20:19
 */
@Mapper
public interface OrderMapper {
    List<Order> getOrderList(@Param("id") String id,@Param("user_id") String user_id,@Param("order_type") String order_type,@Param("pay_type") String pay_type,@Param("create_time") String create_time);
    List<Order> selectOrder(String user_id);
    int addOrder(Order order);
    int deleteOrder(String id);
}
