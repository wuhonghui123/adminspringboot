package cn.edu.guet.weappdemo.service;

import cn.edu.guet.weappdemo.bean.Food;

import java.util.List;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/28/20:54
 */

public interface FoodService {
    List<Food> getFoodList();
    int addFood(Food food);
    int deleFood(String id);
    int updateFood(Food food);
}
