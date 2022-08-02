package cn.edu.guet.weappdemo.service.impl;

import cn.edu.guet.weappdemo.bean.Food;
import cn.edu.guet.weappdemo.bean.FoodClass;
import cn.edu.guet.weappdemo.mapper.ClassMapper;
import cn.edu.guet.weappdemo.mapper.FoodClassMapper;
import cn.edu.guet.weappdemo.mapper.FoodMapper;
import cn.edu.guet.weappdemo.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/28/20:54
 */
@Service
public class FoodServiceImpl implements FoodService {
    @Autowired
    private FoodMapper foodMapper;
    @Autowired
    private FoodClassMapper foodClassMapper;
    @Override
    public List<Food> getFoodList() {
        return foodMapper.getFoodList();
    }

    @Override
    public List<Food> getFoodListtwo(String id) {
        return foodMapper.getFoodListtwo(id);
    }

    @Override
    public int addFood(Food food) {
        System.out.println(food);
        int a = foodMapper.addFood(food);
        String foodid = foodMapper.getFoodID(food.getName());
        foodClassMapper.deleteFoodClass(foodid);
        foodClassMapper.addFoodClass(foodid,food.getClass_name());
        if(Objects.equals(food.getNew_status(), "1")){
            foodClassMapper.addFoodClass(foodid,"11");
        }
        if(Objects.equals(food.getRecommend_status(), "1")){
            foodClassMapper.addFoodClass(foodid,"3");
        }
        return a;
    }

    @Override
    public int deleFood(String id) {
        int a = foodMapper.deleFood(id);
        foodClassMapper.deleteFoodClass(id);
        return a;
    }

    @Override
    public int updateFood(Food food) {
        int a = foodMapper.updateFood(food);
        foodClassMapper.deleteFoodClass(food.getId());
        foodClassMapper.addFoodClass(food.getId(),food.getClass_name());
        if(Objects.equals(food.getNew_status(), "1")){
            foodClassMapper.addFoodClass(food.getId(),"11");
        }
        if(Objects.equals(food.getRecommend_status(), "1")){
            foodClassMapper.addFoodClass(food.getId(),"3");
        }
        return a;
    }
}
