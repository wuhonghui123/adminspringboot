package cn.edu.guet.weappdemo.mapper;

import cn.edu.guet.weappdemo.bean.Classification;
import cn.edu.guet.weappdemo.bean.Food;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/26/20:17
 */
@Mapper
public interface ClassMapper {
    List<Classification> getClassList();
    int addClass(Classification classification);
    int deleFood(String id);
    int updateFood(Classification classification);
    String getclassid(String name);
}
