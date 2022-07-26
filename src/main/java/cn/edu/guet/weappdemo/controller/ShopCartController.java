package cn.edu.guet.weappdemo.controller;

import cn.edu.guet.weappdemo.http.HttpResult;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @Author: wuhonghui
 * @Date: 2022/07/25/19:46
 */
public class ShopCartController {
    @GetMapping("/shopcart/list")//用户登录获取用户的购物车
    public HttpResult getshopcartList(){
        return HttpResult.ok();
    }

    @GetMapping("/shopcart/update")//用户提交订单或退出的时候更新购物车
    public HttpResult updateshopcart(){
        return HttpResult.ok();
    }

}
