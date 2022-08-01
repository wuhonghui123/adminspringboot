package cn.edu.guet.weappdemo.mapper;

import cn.edu.guet.weappdemo.bean.OrderFood;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/26/20:18
 */
@Mapper
public interface OrderFoodMapper {
    List<OrderFood> searchOrder(String order_id);
}
