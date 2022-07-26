package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.http.HttpResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/25/19:01
 */
public class ComboController {
    @GetMapping("/combo/list")//获取套餐列表
    public HttpResult getComboList(){
        return HttpResult.ok();
    }

    @GetMapping("/combo/get_combo")
    public HttpResult getCombo(){
        return HttpResult.ok();
    }

    @PostMapping("/combo/add")//添加套餐列表
    public HttpResult addCombo(){
        return HttpResult.ok();
    }

    @PostMapping("/combo/update")//更新套餐列表
    public HttpResult updateCombo(){
        return HttpResult.ok();
    }

    @PostMapping("/combo/delete")//删除套餐列表
    public HttpResult updateComboFood() {
        return HttpResult.ok();
    }

    @PostMapping("/combo/add_combo_food")//添加套餐
    public HttpResult addComboFood(){
        return HttpResult.ok();
    }

    @PostMapping("/combo/delete_combo_food")//删除套餐列表中的套餐
    public HttpResult deleteComboFood() {
        return HttpResult.ok();
    }

    @PostMapping("/combo/update_publish_status")//更新发布套餐状态
    public HttpResult updatePublishStatus(){
        return HttpResult.ok();
    }

    @GetMapping("/combo/combo_Food_list")//获取套餐包含食物的列表
    public HttpResult getComboFoodList(){
        return HttpResult.ok();
    }


}
