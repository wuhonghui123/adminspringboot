package cn.edu.guet.weappdemo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Author: wuhonghui
 * @Date: 2022/08/01/19:16
 */
@Mapper
public interface FoodClassMapper {
    void addFoodClass(@Param("foodid")String foodid,@Param("classid")String classid);
    void deleteFoodClass(@Param("foodid")String foodid);
}
