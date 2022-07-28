package cn.edu.guet.weappdemo.service;

import cn.edu.guet.weappdemo.bean.Classification;
import cn.edu.guet.weappdemo.bean.Food;

import java.util.List;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/28/20:55
 */
public interface ClassService {
    List<Food> getClassList();
    int addClass(Classification classification);
    int deleFood(String id);
    int updateFood(Classification classification);
}
