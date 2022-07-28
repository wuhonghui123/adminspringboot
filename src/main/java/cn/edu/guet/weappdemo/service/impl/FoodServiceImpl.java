package cn.edu.guet.weappdemo.service.impl;

import cn.edu.guet.weappdemo.bean.Food;
import cn.edu.guet.weappdemo.mapper.FoodMapper;
import cn.edu.guet.weappdemo.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/28/20:54
 */
@Service
public class FoodServiceImpl implements FoodService {
    @Autowired
    private FoodMapper foodMapper;
    @Override
    public List<Food> getFoodList() {
        return foodMapper.getFoodList();
    }

    @Override
    public int addFood(Food food) {
        return foodMapper.addFood(food);
    }

    @Override
    public int deleFood(String id) {
        return foodMapper.deleFood(id);
    }

    @Override
    public int updateFood(Food food) {
        return foodMapper.updateFood(food);
    }
}
