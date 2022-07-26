package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.http.HttpResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/25/18:59
 */
public class FoodController {
    @GetMapping("/food/list")//获取食物列表
    public HttpResult getFoodList(){
        return HttpResult.ok();
    }

    @GetMapping("/food/classification_list")//获取食物分类列表
    public HttpResult getClassificationList(){
        return HttpResult.ok();
    }
    @GetMapping("/food/classification_add")//添加食物分类列表
    public HttpResult addClassificationList(){
        return HttpResult.ok();
    }
    @GetMapping("/food/classification_update")//修改食物分类列表
    public HttpResult updateClassificationList(){
        return HttpResult.ok();
    }
    @GetMapping("/food/classification_delete")//删除食物分类列表
    public HttpResult deleteClassificationList(){
        return HttpResult.ok();
    }

    @GetMapping("/food/get")
    public HttpResult getFood(){
        return HttpResult.ok();
    }
    @PostMapping("/combo/update_publish_status")//更新发布食物状态
    public HttpResult updatePublishStatus(){
        return HttpResult.ok();
    }
    @GetMapping("/food/update_food")//更新食物信息
    public HttpResult updateFood(){
        return HttpResult.ok();
    }
    @GetMapping("/food/add_food")//添加食物
    public HttpResult addFood(){
        return HttpResult.ok();
    }
    @GetMapping("/food/delete_food")//删除食物
    public HttpResult deleteFood(){
        return HttpResult.ok();
    }
}
