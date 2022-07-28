package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.bean.Classification;
import cn.edu.guet.weappdemo.bean.Food;
import cn.edu.guet.weappdemo.http.HttpResult;
import cn.edu.guet.weappdemo.service.ClassService;
import cn.edu.guet.weappdemo.service.FoodService;
import cn.edu.guet.weappdemo.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/25/18:59
 */
@RestController
public class FoodController {
    @Autowired
    private FoodService foodService;
    @Autowired
    private ClassService classService;
    @GetMapping("/food/list")//获取食物列表
    public HttpResult getFoodList(){
        return HttpResult.ok(foodService.getFoodList());
    }
    @GetMapping("/food/classification_list")//获取食物分类列表
    public HttpResult getClassificationList(){
        return HttpResult.ok(classService.getClassList());
    }
    @GetMapping("/food/classification_add")//添加食物分类列表
    public HttpResult addClassificationList(@RequestBody Classification classification){
        return HttpResult.ok(classService.addClass(classification));
    }
    @GetMapping("/food/classification_update")//修改食物分类列表
    public HttpResult updateClassificationList(@RequestBody Classification classification){
        return HttpResult.ok(classService.updateFood(classification));
    }
    @GetMapping("/food/classification_delete")//删除食物分类列表
    public HttpResult deleteClassificationList(@RequestBody Classification classification){
        return HttpResult.ok(classService.deleFood(classification.getId()));
    }

    @GetMapping("/food/update_food")//更新食物信息
    public HttpResult updateFood(@RequestBody Food food){
        return HttpResult.ok(foodService.updateFood(food));
    }
    @GetMapping("/food/add_food")//添加食物
    public HttpResult addFood(@RequestBody Food food){
        return HttpResult.ok(foodService.addFood(food));
    }
    @GetMapping("/food/delete_food")//删除食物
    public HttpResult deleteFood(@RequestBody Food food){
        return HttpResult.ok(foodService.deleFood(food.getId()));
    }
}
